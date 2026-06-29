import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/signal_colors.dart';
import '../view_models/dashboard_view_model.dart';
import '../widgets/detail_card.dart';

class DashboardScreen extends ConsumerStatefulWidget {
  const DashboardScreen({super.key});

  @override
  ConsumerState<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen> {
  Timer? _timer;
  Timer? _signalTimer;
  Timer? _networkTimer;
  Timer? _publicIpTimer;
  late String _currentTime;

  @override
  void initState() {
    super.initState();
    _updateTime();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) => _updateTime());
    
    // Full load on open (includes Public IP + ISP HTTP call)
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(dashboardViewModelProvider.notifier).load();
    });

    // TIMER 1: Refresh RSSI + SSID every 1 seconds (live feel)
    _signalTimer = Timer.periodic(
      const Duration(seconds: 1),
      (_) => ref.read(dashboardViewModelProvider.notifier).refreshSignal(),
    );

    // TIMER 2: Refresh local network info every 20 seconds
    _networkTimer = Timer.periodic(
      const Duration(seconds: 20),
      (_) => ref.read(dashboardViewModelProvider.notifier).refreshNetworkInfo(),
    );

    // TIMER 3: Refresh Public IP + ISP every 60 seconds
    _publicIpTimer = Timer.periodic(
      const Duration(seconds: 60),
      (_) => ref.read(dashboardViewModelProvider.notifier).refreshPublicIp(),
    );
  }

  void _updateTime() {
    if (!mounted) return;
    setState(() {
      _currentTime = DateFormat('HH:mm:ss').format(DateTime.now());
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _signalTimer?.cancel();
    _networkTimer?.cancel();
    _publicIpTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(dashboardViewModelProvider);

    ref.listen<DashboardState>(dashboardViewModelProvider, (previous, next) {
      if (next.error != null && previous?.error != next.error) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(next.error!)),
        );
      }
    });

    return Scaffold(
      backgroundColor: AppTheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildTopBar(),
              const SizedBox(height: 24),
              if (state.isLoading)
                const Expanded(
                  child: Center(child: CircularProgressIndicator(color: AppTheme.primary)),
                )
              else if (state.networkInfo != null) ...[
                _buildHeroCard(state.networkInfo),
                const SizedBox(height: 24),
                Expanded(child: _buildDetailsGrid(state.networkInfo)),
                const SizedBox(height: 16),
                _buildIspCard(state.networkInfo),
              ] else
                const Expanded(
                  child: Center(
                    child: Text('No Network Info Available', style: TextStyle(color: AppTheme.textSecondary)),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Wi-Fi Analyzer',
              style: GoogleFonts.rajdhani(
                color: AppTheme.primary,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            Text(
              _currentTime,
              style: GoogleFonts.inter(
                color: AppTheme.textSecondary,
                fontSize: 14,
              ),
            ),
          ],
        ),
        IconButton(
          icon: const Icon(Icons.refresh, color: AppTheme.primary),
          onPressed: () {
            ref.read(dashboardViewModelProvider.notifier).load();
            // Manual tap = full reload including Public IP + ISP
          },
        ),
      ],
    );
  }

  Widget _buildHeroCard(dynamic networkInfo) {
    final signalColor = SignalColors.fromRssi(networkInfo.rssi);
    
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppTheme.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppTheme.primary.withOpacity(0.3), width: 1),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.wifi, color: AppTheme.primary),
                  const SizedBox(width: 8),
                  Text(
                    networkInfo.ssid,
                    style: GoogleFonts.rajdhani(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: AppTheme.primary.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  networkInfo.securityType,
                  style: GoogleFonts.inter(
                    color: AppTheme.primary,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                '${networkInfo.rssi}',
                style: GoogleFonts.rajdhani(
                  color: signalColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 48,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                'dBm',
                style: GoogleFonts.inter(
                  color: AppTheme.textSecondary,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            networkInfo.signalQuality,
            style: GoogleFonts.inter(
              color: signalColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildChip(networkInfo.band),
              _buildChip(networkInfo.wifiVersion),
              _buildChip(networkInfo.securityType),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildChip(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: AppTheme.surfaceVariant,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppTheme.border),
      ),
      child: Text(
        label,
        style: GoogleFonts.inter(
          color: AppTheme.textPrimary,
          fontSize: 10,
        ),
      ),
    );
  }

  String _bandFromFrequency(String freqStr) {
    if (freqStr == '—' || freqStr.isEmpty) return '—';
    final mhz = int.tryParse(freqStr.replaceAll(RegExp(r'[^0-9]'), ''));
    if (mhz == null) return freqStr;
    if (mhz >= 5945) return '6 GHz';
    if (mhz >= 5000) return '5 GHz';
    if (mhz >= 2400) return '2.4 GHz';
    return freqStr;
  }

  Widget _buildDetailsGrid(dynamic networkInfo) {
    String ispShort = networkInfo.ispName;
    if (ispShort.length > 15) {
      ispShort = '${ispShort.substring(0, 15)}...';
    }

    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 1.6,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      children: [
        DetailCard(icon: Icons.public, label: 'Public IP', value: networkInfo.publicIp),
        DetailCard(icon: Icons.router, label: 'Gateway', value: networkInfo.gateway ?? "—"),
        DetailCard(icon: Icons.cell_tower, label: 'ISP', value: ispShort),
        DetailCard(icon: Icons.speed, label: 'Band', value: _bandFromFrequency(networkInfo.frequency)),
        DetailCard(icon: Icons.dns, label: 'IP Version', value: networkInfo.ipVersion ?? "IPv4"),
      ],
    );
  }

  Widget _buildIspCard(dynamic networkInfo) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.surface,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const Icon(Icons.business, color: AppTheme.primary, size: 32),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  networkInfo.ispName,
                  style: GoogleFonts.rajdhani(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  networkInfo.ispOrg,
                  style: GoogleFonts.inter(
                    color: AppTheme.textSecondary,
                    fontSize: 12,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: AppTheme.secondary.withOpacity(0.2),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              'Connected',
              style: GoogleFonts.inter(
                color: AppTheme.secondary,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
