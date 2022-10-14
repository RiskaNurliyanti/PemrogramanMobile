import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:toko_tanaman_polaris/UsersAPI.dart';
import 'package:toko_tanaman_polaris/constants.dart';
import 'package:toko_tanaman_polaris/screens/mainpage.dart';
import 'package:toko_tanaman_polaris/screens/menu_home/home.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    var mySnackBar = const SnackBar(
      content: const Text("Ini Adalah Menu Home"),
      duration: Duration(seconds: 4),
      backgroundColor: Color(0xFF023609),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Toko Tanaman Polaris'),
        backgroundColor: const Color(0xFF023609),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xFF88F096),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: size.width,
                height: size.height * 0.2,
                margin: const EdgeInsets.only(top: 30, bottom: 10),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: const AssetImage("assets/images/daun.png"))),
              ),
              const Text(
                "Toko Tanaman Polaris",
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF023609),
                ),
              ),
              const Text(
                "Belanja Tanaman Di Sini",
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF023609),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      tanaman,
                      tanaman1,
                      tanaman2,
                    ],
                  )),
            ],
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ButtonBeli(),
              ]),
        ],
      ),
    );
  }
}

//  tanaman--------------------------------------------------------------------------------------------------
Widget tanaman = (Container(
  width: 285,
  height: 265,
  margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
  alignment: Alignment.center,
  decoration: BoxDecoration(
    color: const Color(0xFF00FC00),
    borderRadius: BorderRadius.circular(10),
  ),
  child: containerTanaman,
));

Widget tanaman1 = (Container(
  width: 285,
  height: 265,
  margin: const EdgeInsets.only(top: 10, right: 10),
  alignment: Alignment.center,
  decoration: BoxDecoration(
    color: const Color(0xFF00FC00),
    borderRadius: BorderRadius.circular(10),
  ),
  child: containerTanaman1,
));

Widget tanaman2 = (Container(
  width: 285,
  height: 265,
  margin: const EdgeInsets.only(top: 10, right: 10),
  alignment: Alignment.center,
  decoration: BoxDecoration(
    color: const Color(0xFF00FC00),
    borderRadius: BorderRadius.circular(10),
  ),
  child: containerTanaman2,
));
//  tanaman--------------------------------------------------------------------------------------------------

//  gambartanaman--------------------------------------------------------------------------------------------
Widget containerTanaman = (Column(
  children: [
    Container(
      width: 280,
      height: 175,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: const DecorationImage(
            image: AssetImage("assets/images/anggrekbiru.png")),
      ),
    ),
    const namatanaman(tanaman: "Anggrek Dendrobium Biru"),
    const namatanaman(tanaman: "Rp 30.000")
  ],
));

Widget containerTanaman1 = (Column(
  children: [
    Container(
      width: 295,
      height: 175,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: const DecorationImage(
            image: AssetImage("assets/images/lidahmertua.png")),
      ),
    ),
    const namatanaman(tanaman: "Lidah Mertua"),
    const namatanaman(tanaman: "Rp 35.000")
  ],
));

Widget containerTanaman2 = (Column(
  children: [
    Container(
      width: 280,
      height: 175,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: const DecorationImage(
            image: const AssetImage("assets/images/lidahbuaya.jpg")),
      ),
    ),
    const namatanaman(tanaman: "Lidah Buaya"),
    const namatanaman(tanaman: "Rp 15.000")
  ],
));
// class gambartanaman--------------------------------------------------------------------------------------------

// class namatanaman-----------------------------------------------------------------------------------------------
class namatanaman extends StatelessWidget {
  const namatanaman({Key? key, this.isActive = false, required this.tanaman})
      : super(key: key);
  final bool isActive;
  final String tanaman;

  @override
  Widget build(BuildContext context) {
    return Text(
      tanaman,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: const Color(0xFFFFFFFF),
      ),
    );
  }
}
//  namatanaman-----------------------------------------------------------------------------------------------

class ButtonBeli extends StatefulWidget {
  const ButtonBeli({Key? key}) : super(key: key);

  @override
  State<ButtonBeli> createState() => _ButtonBeliState();
}

class _ButtonBeliState extends State<ButtonBeli> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Get.off(MyMainPage());
        final snack = const SnackBar(
          content: Text(
            "Ini Adalah Menu Home",
            style: TextStyle(fontSize: 18),
          ),
          duration: Duration(seconds: 4),
          backgroundColor: const Color(0xFF023609),
        );
        ScaffoldMessenger.of(context).showSnackBar(snack);
      }),
      child: Container(
        width: 220,
        height: 55,
        margin: const EdgeInsets.only(top: 50, bottom: 20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xFF023609),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Text(
          "Beli",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
