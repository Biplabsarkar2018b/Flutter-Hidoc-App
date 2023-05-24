import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hidoc/home/desktop/pc_home_view.dart';
import 'package:hidoc/home/mobile/home_view.dart';
import 'package:hidoc/responsiveness/ResponsiveLayout.dart';

import 'api/httpover.dart';

Future main() async {
  // HttpOverrides.global = new MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ResponsiveLayout(
          mobileBody: HomeView(), desktopBody: PCHomeView()),
    );
  }
}
