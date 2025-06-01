class AppConfig {
  static const String appName = 'My Flutter App';
  static const String apiBaseUrl = 'https://api.example.com';
  static const String version = '1.0.0';
  String get baseApiUrl => apiBaseUrl;
  String get baseModuleApiUrl => 'https://module.example.com/api';
  String get baseWebSocketUrl => 'wss://ws.example.com';
  // Add more configuration constants as needed
}