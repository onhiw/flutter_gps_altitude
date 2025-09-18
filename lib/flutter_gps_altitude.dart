
import 'package:flutter/services.dart';

import 'flutter_gps_altitude_platform_interface.dart';

class FlutterGpsAltitude {
  static const MethodChannel _channel = MethodChannel('flutter_gps_altitude');

  Future<String?> getPlatformVersion() {
    return FlutterGpsAltitudePlatform.instance.getPlatformVersion();
  }

  static Future<Map<String, dynamic>?> getGpsAltitude() async {
    try {
      final result = await _channel.invokeMethod("getGpsAltitude");
      if (result != null) {
        return Map<String, dynamic>.from(result);
      }
    } on PlatformException catch (e) {
      throw Exception("Failed to get GPS altitude: ${e.message}");
    }
    return null;
  }
}
