import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:kebab_ned/constants.dart';
import 'package:kebab_ned/screens/menu_home/home.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Kebab Ned'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: size.width,
                height: size.height * 0.5,
                margin: EdgeInsets.only(top: 30, bottom: 10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("Assets/KebabNed.png"))),
              ),
              Text(
                "Welcome to Kebab Ned!!!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF023609),
                ),
              ),
              Text(
                "Kebab Enak Dan Harga Terjangkau",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF023609),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      kebab1,
                      kebab2,
                      kebab3,
                    ],
                  )),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ButtonLogin(), ButtonDaftar()],
          ),
        ],
      ),
    );
  }
}

//kebab

Widget kebab1 = (Container(
  width: 300,
  height: 300,
  margin: EdgeInsets.only(top: 10, right: 10, left: 10),
  alignment: Alignment.center,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
  ),
  child: isikebab1,
));

Widget kebab2 = (Container(
  width: 300,
  height: 300,
  margin: EdgeInsets.only(top: 10, right: 10, left: 10),
  alignment: Alignment.center,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
  ),
  child: isikebab2,
));

Widget kebab3 = (Container(
  width: 300,
  height: 300,
  margin: EdgeInsets.only(top: 10, right: 10, left: 10),
  alignment: Alignment.center,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
  ),
  child: isikebab3,
));

////
Widget isikebab1 = (Column(
  children: [
    Container(
      width: 200,
      height: 200,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage("Assets/original.jpeg"),
        ),
      ),
    ),
    namakebab(kebab: "Kebab Original"),
  ],
));

Widget isikebab2 = (Column(
  children: [
    Container(
      width: 200,
      height: 200,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage("Assets/Jumbo.jpeg"),
        ),
      ),
    ),
    namakebab(kebab: "Kebab Jumbo"),
  ],
));

Widget isikebab3 = (Column(
  children: [
    Container(
      width: 200,
      height: 200,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage("Assets/tempe.jpeg"),
        ),
      ),
    ),
    namakebab(kebab: "Kebab Tempe"),
  ],
));

class namakebab extends StatelessWidget {
  const namakebab({Key? key, this.isActive = false, required this.kebab})
      : super(key: key);
  final bool isActive;
  final String kebab;

  @override
  Widget build(BuildContext context) {
    return Text(
      kebab,
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
    );
  }
}

//Button Login
class ButtonLogin extends StatefulWidget {
  const ButtonLogin({Key? key}) : super(key: key);

  @override
  State<ButtonLogin> createState() => _ButtonLoginState();
}

class _ButtonLoginState extends State<ButtonLogin> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Get.off(HomeScreen());
        // final snack = SnackBar(
        //   content: Text(
        //     "Ini Adalah Menu Home",
        //     style: TextStyle(fontSize: 18),
        //   ),
        //   duration: Duration(seconds: 4),
        //   backgroundColor: Color(0xFF023609),
        // );
        // ScaffoldMessenger.of(context).showSnackBar(snack);
      }),
      child: Container(
        width: 220,
        height: 55,
        margin: EdgeInsets.only(top: 50, bottom: 20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xFF023609),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          "Login",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

//Button Daftar
class ButtonDaftar extends StatefulWidget {
  const ButtonDaftar({Key? key}) : super(key: key);

  @override
  State<ButtonDaftar> createState() => _ButtonDaftarState();
}

class _ButtonDaftarState extends State<ButtonDaftar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Get.off(HomeScreen());
        // final snack = SnackBar(
        //   content: Text(
        //     "Ini Adalah Menu Home",
        //     style: TextStyle(fontSize: 18),
        //   ),
        //   duration: Duration(seconds: 4),
        //   backgroundColor: Color(0xFF023609),
        // );
        // ScaffoldMessenger.of(context).showSnackBar(snack);
      }),
      child: Container(
        width: 220,
        height: 55,
        margin: EdgeInsets.only(top: 50, bottom: 20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xFF023609),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          "Daftar",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
