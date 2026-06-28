import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../dashboard/presentation/view_models/dashboard_view_model.dart';
import '../../../speedtest/data/models/speed_result_model.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      appBar: AppBar(
        title: Text(
          'Settings',
          style: GoogleFonts.rajdhani(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        children: [
          _buildSectionHeader('APPEARANCE'),
          ListTile(
            leading: const Icon(Icons.palette, color: Colors.white70),
            title: const Text('Dark Mode', style: TextStyle(color: Colors.white)),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('App theme', style: TextStyle(color: Colors.white54)),
                const SizedBox(height: 4),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                  decoration: BoxDecoration(
                    color: AppTheme.surface,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'Always On — Only dark mode supported',
                    style: TextStyle(fontSize: 10, color: Colors.white54),
                  ),
                ),
              ],
            ),
            trailing: Switch(
              value: true,
              onChanged: null, // disabled
              activeTrackColor: const Color(0xFF00E5FF).withAlpha(100),
              activeColor: const Color(0xFF00E5FF).withAlpha(150),
            ),
            contentPadding: EdgeInsets.zero,
          ),
          const SizedBox(height: 24),

          _buildSectionHeader('SPEED TEST'),
          ListTile(
            leading: const Icon(Icons.history, color: Colors.white70),
            title: const Text('Test History', style: TextStyle(color: Colors.white)),
            subtitle: const Text('View past speed test results', style: TextStyle(color: Colors.white54)),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.white54),
            contentPadding: EdgeInsets.zero,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SpeedTestHistoryScreen()),
              );
            },
          ),
          const SizedBox(height: 24),

          _buildSectionHeader('NETWORK'),
          ListTile(
            leading: const Icon(Icons.wifi_find, color: Colors.white70),
            title: const Text('Advanced Network Details', style: TextStyle(color: Colors.white)),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.white54),
            contentPadding: EdgeInsets.zero,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const AdvancedNetworkScreen()),
              );
            },
          ),
          const SizedBox(height: 24),

          _buildSectionHeader('ABOUT'),
          ListTile(
            leading: const Icon(Icons.info_outline, color: Colors.white70),
            title: const Text('App Version', style: TextStyle(color: Colors.white)),
            trailing: Text(
              'v1.0.0',
              style: GoogleFonts.rajdhani(color: Colors.white54, fontSize: 16),
            ),
            contentPadding: EdgeInsets.zero,
          ),
          const ListTile(
            leading: Icon(Icons.code, color: Colors.white70),
            title: Text('Built With', style: TextStyle(color: Colors.white)),
            trailing: Text('Flutter + Gemini', style: TextStyle(color: Colors.white54, fontSize: 12)),
            contentPadding: EdgeInsets.zero,
          ),
          const ListTile(
            leading: Icon(Icons.developer_mode, color: Colors.white70),
            title: Text('Developer', style: TextStyle(color: Colors.white)),
            subtitle: Text('GTU BE IT Student', style: TextStyle(color: Colors.white54)),
            contentPadding: EdgeInsets.zero,
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.rajdhani(
            color: const Color(0xFF00E5FF),
            fontSize: 13,
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        const Divider(color: Colors.white12, thickness: 1),
        const SizedBox(height: 8),
      ],
    );
  }
}

class SpeedTestHistoryScreen extends StatefulWidget {
  const SpeedTestHistoryScreen({super.key});

  @override
  State<SpeedTestHistoryScreen> createState() => _SpeedTestHistoryScreenState();
}

class _SpeedTestHistoryScreenState extends State<SpeedTestHistoryScreen> {
  List<SpeedResultModel> _history = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadHistory();
  }

  Future<void> _loadHistory() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final historyList = prefs.getStringList('speed_test_history') ?? [];
      final parsed = historyList.map((e) => SpeedResultModel.fromJson(jsonDecode(e))).toList();
      setState(() {
        _history = parsed;
        _isLoading = false;
      });
    } catch (_) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      appBar: AppBar(
        title: Text(
          'Speed Test History',
          style: GoogleFonts.rajdhani(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator(color: Color(0xFF00E5FF)))
          : _history.isEmpty
              ? Center(
                  child: Text(
                    'No test history yet',
                    style: GoogleFonts.rajdhani(fontSize: 18, color: Colors.white54),
                  ),
                )
              : ListView.separated(
                  padding: const EdgeInsets.all(16.0),
                  itemCount: _history.length,
                  separatorBuilder: (context, index) => const Divider(color: Colors.white12, height: 24),
                  itemBuilder: (context, index) {
                    final item = _history[index];
                    final dateStr = DateFormat('dd MMM yyyy, HH:mm').format(item.testedAt);
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          dateStr,
                          style: const TextStyle(color: Colors.white54, fontSize: 12),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildStat('↓', item.downloadMbps, const Color(0xFF00E5FF)),
                            _buildStat('↑', item.uploadMbps, const Color(0xFF00FF88)),
                            _buildStat('Ping', item.pingMs.toDouble(), const Color(0xFFFFD600), isPing: true),
                          ],
                        ),
                      ],
                    );
                  },
                ),
    );
  }

  Widget _buildStat(String icon, double value, Color color, {bool isPing = false}) {
    return Row(
      children: [
        Text(
          icon,
          style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(width: 4),
        Text(
          isPing ? value.toInt().toString() : value.toStringAsFixed(1),
          style: GoogleFonts.rajdhani(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 4),
        Text(
          isPing ? 'ms' : 'Mbps',
          style: const TextStyle(color: Colors.white54, fontSize: 12),
        ),
      ],
    );
  }
}

class AdvancedNetworkScreen extends ConsumerWidget {
  const AdvancedNetworkScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboardState = ref.watch(dashboardViewModelProvider);
    final info = dashboardState.networkInfo;

    return Scaffold(
      backgroundColor: AppTheme.background,
      appBar: AppBar(
        title: Text(
          'Advanced Details',
          style: GoogleFonts.rajdhani(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: info == null
          ? const Center(
              child: Text(
                'No network information available',
                style: TextStyle(color: Colors.white54),
              ),
            )
          : ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                _buildSectionHeader('CONNECTION'),
                _buildRow('SSID', info.ssid),
                _buildRow('BSSID', info.bssid),
                _buildRow('Frequency', info.frequency),
                _buildRow('Band', info.band),
                _buildRow('Security', info.securityType),
                _buildRow('Wi-Fi Version', info.wifiVersion),
                const SizedBox(height: 24),
                
                _buildSectionHeader('IP & NETWORK'),
                _buildRow('Local IP', info.localIp),
                _buildRow('Public IP', info.publicIp),
                _buildRow('Subnet Mask', info.subnet ?? 'Unknown'),
                _buildRow('Gateway', info.gateway ?? 'Unknown'),
                _buildRow('IP Version', info.ipVersion ?? 'Unknown'),
                const SizedBox(height: 24),

                _buildSectionHeader('ISP INFO'),
                _buildRow('ISP Name', info.ispName),
                _buildRow('ISP Organization', info.ispOrg),
              ],
            ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.rajdhani(
            color: const Color(0xFF00E5FF),
            fontSize: 13,
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        const Divider(color: Colors.white12, thickness: 1),
        const SizedBox(height: 8),
      ],
    );
  }

  Widget _buildRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: const TextStyle(color: Colors.white54, fontSize: 14),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              value,
              style: GoogleFonts.rajdhani(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
