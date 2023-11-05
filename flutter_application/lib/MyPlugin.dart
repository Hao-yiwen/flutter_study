import 'package:flutter/services.dart';

class MyPlugin {
  static const platform = MethodChannel('com.example.app/native');

  Future<String> platformVersion() async {
    try {
      final String version = await platform.invokeMethod('getPlatformVersion');
      return version;
    } on PlatformException catch (e) {
      return 'Failed to get platform version: ${e.message}';
    }
  }
}