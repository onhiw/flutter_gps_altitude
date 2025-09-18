import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_gps_altitude/flutter_gps_altitude.dart';
import 'package:flutter_gps_altitude/flutter_gps_altitude_platform_interface.dart';
import 'package:flutter_gps_altitude/flutter_gps_altitude_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterGpsAltitudePlatform
    with MockPlatformInterfaceMixin
    implements FlutterGpsAltitudePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterGpsAltitudePlatform initialPlatform = FlutterGpsAltitudePlatform.instance;

  test('$MethodChannelFlutterGpsAltitude is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterGpsAltitude>());
  });

  test('getPlatformVersion', () async {
    FlutterGpsAltitude flutterGpsAltitudePlugin = FlutterGpsAltitude();
    MockFlutterGpsAltitudePlatform fakePlatform = MockFlutterGpsAltitudePlatform();
    FlutterGpsAltitudePlatform.instance = fakePlatform;

    expect(await flutterGpsAltitudePlugin.getPlatformVersion(), '42');
  });
}
