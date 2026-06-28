# Smart Wi-Fi Analyzer - Project Context

- **App Name**: Smart Wi-Fi Analyzer
- **Package**: `smart_wifi_analyzer`
- **Platform**: Android only (minSdkVersion 26, targetSdkVersion 34)
- **Flutter**: 3.10.0+ | Dart SDK: >=3.0.0 <4.0.0
- **State Management**: Riverpod (`flutter_riverpod: ^2.5.1`)
- **Navigation**: 5-tab BottomNavigationBar (Dashboard, Signal, Networks, Speed Test, Settings)
- **Theme**: DARK MODE ONLY — Deep navy/dark background with cyan accent (#00E5FF)
- **Code generation**: `freezed` + `riverpod_generator` + `build_runner`

## Packages (final list, do NOT add or change versions)
```yaml
  flutter_riverpod: ^2.5.1
  riverpod_annotation: ^2.3.5
  wifi_scan: ^0.4.1+3
  network_info_plus: ^6.0.0
  wifi_info_enhanced: ^2.1.1
  permission_handler: ^11.3.1
  fl_chart: ^0.69.0
  go_router: ^14.2.0
  flutter_internet_speed_test_pro: ^1.5.1
  http: ^1.2.1
  freezed_annotation: ^2.4.1
  json_annotation: ^4.9.0
  shared_preferences: ^2.2.3
  intl: ^0.19.0
  google_fonts: ^6.2.1
  ip_go: ^1.0.0
```

## Folder Structure (feature-first, strict)
```
lib/
├── core/
│   ├── theme/
│   │   ├── app_theme.dart
│   │   └── signal_colors.dart
│   ├── constants/
│   │   └── app_constants.dart
│   ├── di/
│   │   └── providers.dart
│   └── services/
│       └── ip_info_service.dart
├── features/
│   ├── dashboard/
│   │   ├── data/
│   │   │   └── models/network_info_model.dart
│   │   └── presentation/
│   │       ├── screens/dashboard_screen.dart
│   │       ├── widgets/
│   │       └── view_models/dashboard_view_model.dart
│   ├── signal/
│   │   └── presentation/
│   │       ├── screens/signal_screen.dart
│   │       ├── widgets/
│   │       └── view_models/signal_view_model.dart
│   ├── networks/
│   │   ├── data/
│   │   │   └── models/access_point_model.dart
│   │   └── presentation/
│   │       ├── screens/networks_screen.dart
│   │       ├── widgets/
│   │       └── view_models/networks_view_model.dart
│   ├── speedtest/
│   │   ├── data/
│   │   │   └── models/speed_result_model.dart
│   │   └── presentation/
│   │       ├── screens/speedtest_screen.dart
│   │       ├── widgets/
│   │       └── view_models/speedtest_view_model.dart
│   └── settings/
│       └── presentation/
│           ├── screens/settings_screen.dart
│           └── widgets/
└── main.dart
```
