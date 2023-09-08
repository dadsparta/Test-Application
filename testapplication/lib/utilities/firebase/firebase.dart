import 'package:firebase_remote_config/firebase_remote_config.dart';

class FirebaseRemoteConfigService {
  FirebaseRemoteConfigService._() : _remoteConfig = FirebaseRemoteConfig.instance; // MODIFIED

  static FirebaseRemoteConfigService? _instance; // NEW
  factory FirebaseRemoteConfigService() => _instance ??= FirebaseRemoteConfigService._(); // NEW

  final FirebaseRemoteConfig _remoteConfig;

  String getString(String key) => _remoteConfig.getString(key); // NEW
  bool getBool(String key) =>_remoteConfig.getBool(key); // NEW
  int getInt(String key) =>_remoteConfig.getInt(key); // NEW
  double getDouble(String key) =>_remoteConfig.getDouble(key); // NEW

  String get testMessage => _remoteConfig.getString(FirebaseRemoteConfigKeys.welcomeMessage);

  Future<void> _setConfigSettings() async => _remoteConfig.setConfigSettings(
    RemoteConfigSettings(
      fetchTimeout: const Duration(minutes: 1),
      minimumFetchInterval: const Duration(hours: 12),
    ),
  );
  Future<void> _setDefaults() async => _remoteConfig.setDefaults(
    const {
      FirebaseRemoteConfigKeys.welcomeMessage: 'Hey there, this message is coming from local defaults.',
    },
  );

  Future<void> initialize() async {
    await _setConfigSettings();
    await _setDefaults();
  }
}

class FirebaseRemoteConfigKeys {
  static const String welcomeMessage = 'test';
}

