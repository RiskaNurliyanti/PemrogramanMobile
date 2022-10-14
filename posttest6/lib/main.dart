import 'package:flutter/material.dart';
import 'splashscreen.dart';
import 'LandingPage.dart';
import 'home.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Toko Tanaman Polaris",
      initialRoute: '/',
      routes: {'/': (context) => const SplashScreen()},
    );
  }
}
