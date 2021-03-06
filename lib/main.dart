import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:repayer/screen/login_screen.dart';
import 'package:repayer/screen/select_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'firebase_options.dart';
import 'package:package_info_plus/package_info_plus.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  const useEmulator = bool.fromEnvironment('USE_EMULATOR');
  const flavor = String.fromEnvironment('FLAVOR');
  print(flavor);
  print(useEmulator);

  if (useEmulator) {
    await _connectToFirebaseEmulator();
  }

  //FirebaseAuth.instance.signOut();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Debt Repayment App',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const App(),
    );
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  build(BuildContext context) {
    return FirebaseAuth.instance.currentUser == null
        ? LoginScreen()
        : SelectionScreen();
  }
}

Future _connectToFirebaseEmulator() async {
  final localhost = Platform.isAndroid ? '10.0.2.2' : 'localhost';

  FirebaseFirestore.instance.settings = Settings(
    host: '$localhost:8080',
    sslEnabled: false,
    persistenceEnabled: false,
  );

  FirebaseFirestore.instance.useFirestoreEmulator(localhost, 8022);

  await Future.wait(
    [
      FirebaseAuth.instance.useAuthEmulator(localhost, 9099),
    ],
  );
}
