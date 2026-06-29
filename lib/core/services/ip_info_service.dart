import 'dart:convert';
import 'package:http/http.dart' as http;

class IpInfoService {
  Future<Map<String, dynamic>> fetchIpInfo() async {
    final List<String> endpoints = [
      'https://ipapi.co/json/',
      'https://ip-api.com/json/?fields=query,org,isp,as',
      'https://ipwho.is/',
    ];

    for (final url in endpoints) {
      try {
        final response = await http.get(
          Uri.parse(url),
          headers: {'Accept': 'application/json'},
        ).timeout(const Duration(seconds: 8));

        if (response.statusCode == 200) {
          final data = json.decode(response.body) as Map<String, dynamic>;

          // Normalize different API response formats
          final ip = data['ip'] ?? data['query'] ?? 'Unknown';
          
          String? org;
          if (data['connection'] != null && data['connection'] is Map) {
            org = data['connection']['isp'] ?? data['connection']['org'] ?? data['connection']['asn']?.toString();
          }
          org ??= data['isp'] ?? data['org'] ?? data['as'] ?? 'Unknown';
          
          final version = (ip.toString().contains(':')) ? 'IPv6' : 'IPv4';

          return {
            'ip': ip.toString(),
            'org': org.toString(),
            'version': version,
          };
        }
      } catch (e) {
        // Try next endpoint
        continue;
      }
    }
    return {'ip': 'Unavailable', 'org': 'Unavailable', 'version': 'Unknown'};
  }

  String parseIspName(String org) {
    if (org == 'Unknown' || org == 'Unavailable') return org;
    // Strip ASN prefix like "AS12345 " or "AS12345, "
    final cleaned = org.replaceFirst(RegExp(r'^AS\d+[\s,]+'), '');
    return cleaned.trim().isEmpty ? org : cleaned.trim();
  }
}
