import 'dart:async';
import 'package:flutter/material.dart';
import 'LandingPage.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    splashScreenStart();
    super.initState();
  }

  splashScreenStart() {
    var durasi = Duration(seconds: 5);
    return Timer(durasi, () {
      Get.off(LandingPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF88F096),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(15),
              width: 200,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/daun.png",
                  ),
                ),
              ),
            ),
            Text(
              "Toko Tanaman Polaris",
              style: TextStyle(fontSize: 18, color: Colors.white),
              textAlign: TextAlign.end,
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
