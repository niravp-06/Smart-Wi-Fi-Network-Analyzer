import 'dart:convert';
import 'package:http/http.dart' as http;

class IpInfoService {
  Future<Map<String, dynamic>> fetchIpInfo() async {
    final List<String> endpoints = [
      'https://ipwho.is/',
      'https://ipapi.co/json/',
      'https://ip-api.com/json/?fields=query,org,isp,as',
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

          String? domain;
          if (data['connection'] != null && data['connection']['domain'] != null) {
            domain = data['connection']['domain'];
          }

          if (domain == null || domain.isEmpty) {
             // Try to autocomplete the org name to get the domain
             try {
                final cleanedName = parseIspName(org!);
                final autoResponse = await http.get(Uri.parse('https://autocomplete.clearbit.com/v1/companies/suggest?query=${Uri.encodeComponent(cleanedName)}')).timeout(const Duration(seconds: 4));
                if (autoResponse.statusCode == 200) {
                   final autoData = json.decode(autoResponse.body) as List<dynamic>;
                   if (autoData.isNotEmpty) {
                      final bestMatch = autoData.first;
                      final autoDomain = bestMatch['domain'];
                      if (autoDomain != null && autoDomain.toString().isNotEmpty) {
                         domain = autoDomain.toString();
                      }
                   }
                }
             } catch (_) {
                // Ignore autocomplete failures
             }
          }

          return {
            'ip': ip.toString(),
            'org': org.toString(),
            'version': version,
            'ispDomain': domain,
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
    
    // Split by comma and take the first part (e.g. "Bharti Airtel Ltd., Telemedia Services" -> "Bharti Airtel Ltd.")
    String cleaned = org.split(',').first;
    
    // Strip ASN prefix like "AS12345 " or "AS12345, "
    cleaned = cleaned.replaceFirst(RegExp(r'^AS\d+[\s,]+'), '');
    
    // Strip corporate suffixes
    final suffixes = RegExp(r'\b(limited|ltd|inc|incorporated|llc|corp|corporation|pvt|private)\b\.?', caseSensitive: false);
    cleaned = cleaned.replaceAll(suffixes, '');
    
    // Clean up extra spaces or punctuation at the end
    cleaned = cleaned.replaceAll(RegExp(r'[\s,]+$'), '');
    
    return cleaned.trim().isEmpty ? org : cleaned.trim();
  }
}
