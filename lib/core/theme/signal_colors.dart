import 'package:flutter/material.dart';

class SignalColors {
  static Color fromRssi(int rssi) {
    if (rssi >= -50) return const Color(0xFF00FF88); // Excellent
    if (rssi >= -60) return const Color(0xFF69FF47); // Good
    if (rssi >= -70) return const Color(0xFFFFD600); // Fair
    return const Color(0xFFFF4444);                  // Poor
  }

  static String qualityLabel(int rssi) {
    if (rssi >= -50) return 'Excellent';
    if (rssi >= -60) return 'Good';
    if (rssi >= -70) return 'Fair';
    return 'Poor';
  }

  static Color fromQuality(String quality) {
    switch (quality) {
      case 'Excellent':
        return const Color(0xFF00FF88);
      case 'Good':
        return const Color(0xFF69FF47);
      case 'Fair':
        return const Color(0xFFFFD600);
      case 'Poor':
        return const Color(0xFFFF4444);
      default:
        return const Color(0xFF888888);
    }
  }
}
