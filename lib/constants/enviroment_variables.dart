import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class EnvironmentVariables {
  // Default values
  static bool apiCalls = false;
  static bool verbose = false;
  static bool showAppVersion = true;

  static String appTitle = 'ThingsBoard';
  static String apiUrl = 'https://demo.thingsboard.io';
  static int timeoutSeconds = 30;

  static Future<void> load([String? configPath]) async {
    final path = configPath ?? 'assets/config/config.json';
    try {
      final jsonStr = await rootBundle.loadString(path);
      final data = jsonDecode(jsonStr) as Map<String, dynamic>;

      apiCalls = (data['apiCalls'] as bool?) ?? apiCalls;
      verbose = (data['verbose'] as bool?) ?? verbose;
      showAppVersion = (data['showAppVersion'] as bool?) ?? showAppVersion;

      appTitle = (data['appTitle'] as String?) ?? appTitle;
      apiUrl = (data['apiUrl'] as String?) ?? apiUrl;
      timeoutSeconds = (data['timeoutSeconds'] as int?) ?? timeoutSeconds;
    } catch (e) {
      // If config.json missing or invalid, just keep defaults
      print('⚠️ Failed to load config.json: $e');
    }
  }
}
