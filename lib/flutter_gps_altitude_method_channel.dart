import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_gps_altitude_platform_interface.dart';

/// An implementation of [FlutterGpsAltitudePlatform] that uses method channels.
class MethodChannelFlutterGpsAltitude extends FlutterGpsAltitudePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_gps_altitude');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
