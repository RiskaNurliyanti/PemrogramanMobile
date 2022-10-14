import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kebab_ned/screens/spalshscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Kebab Ned",
      initialRoute: '/',
      routes: {'/': (context) => const SplashScreen()},
    );
  }
}
