import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_gps_altitude_method_channel.dart';

abstract class FlutterGpsAltitudePlatform extends PlatformInterface {
  /// Constructs a FlutterGpsAltitudePlatform.
  FlutterGpsAltitudePlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterGpsAltitudePlatform _instance = MethodChannelFlutterGpsAltitude();

  /// The default instance of [FlutterGpsAltitudePlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterGpsAltitude].
  static FlutterGpsAltitudePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterGpsAltitudePlatform] when
  /// they register themselves.
  static set instance(FlutterGpsAltitudePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
