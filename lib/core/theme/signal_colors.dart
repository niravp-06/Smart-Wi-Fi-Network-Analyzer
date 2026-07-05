import 'package:flutter/material.dart';

class SignalColors {
  static Color fromRssi(int rssi) {
    if (rssi >= -50) return const Color(0xFF34C759); // Excellent
    if (rssi >= -60) return const Color(0xFF32ADE6); // Good (Cyan/Blue)
    if (rssi >= -70) return const Color(0xFFFF9500); // Fair (Amber)
    return const Color(0xFFFF3B30);                  // Poor (Red)
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
        return const Color(0xFF34C759);
      case 'Good':
        return const Color(0xFF32ADE6);
      case 'Fair':
        return const Color(0xFFFF9500);
      case 'Poor':
        return const Color(0xFFFF3B30);
      default:
        return const Color(0xFF8E8E93);
    }
  }
}
