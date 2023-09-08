import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:testapplication/pages/main_page/main_page_model.dart';
import 'package:testapplication/utilities/firebase/firebase.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final remoteConfig = FirebaseRemoteConfigService();
  String remoteConfigCall = remoteConfig.getString(FirebaseRemoteConfigKeys.welcomeMessage);
    debugPrint(remoteConfigCall);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const MainPage();
  }
}
