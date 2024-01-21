import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:multi_store_1/views/buyers/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid ? await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyAYd4gSNSTM3uJHu8mRbTzRYuSdipZlOQA",
        appId: "1:559654026802:android:5808afa638b74743a0062b",
        messagingSenderId: "559654026802",
        projectId: "multi-store-admin-01-47950",
      storageBucket: "gs://multi-store-admin-01-47950.appspot.com"
    )
  ) : Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Brand-Bold',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow.shade900),
          useMaterial3: false,
        ),
        home: MainScreen()
    );

  }
}

