import 'dart:convert';
import 'package:http/http.dart' as http;

class IpInfoService {
  Future<Map<String, dynamic>> fetchIpInfo() async {
    try {
      final response = await http.get(Uri.parse('https://ipapi.co/json/'));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return {
          'ip': data['ip'] ?? 'Unknown',
          'org': data['org'] ?? 'Unknown',
          'version': data['version'] ?? 'Unknown',
        };
      }
    } catch (_) {
      // Return default on error
    }
    return {'ip': 'Unknown', 'org': 'Unknown', 'version': 'Unknown'};
  }

  String parseIspName(String org) {
    if (org == 'Unknown') return org;
    final match = RegExp(r'^AS\d+\s+(.*)$').firstMatch(org);
    if (match != null && match.groupCount >= 1) {
      return match.group(1)!;
    }
    return org;
  }
}
