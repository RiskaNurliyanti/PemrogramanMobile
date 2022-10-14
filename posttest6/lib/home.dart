import 'package:flutter/material.dart';
import 'pesan.dart';
import 'tumbuhan.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Toko Tanaman Polaris"),
          backgroundColor: Color(0xFF023609),
          centerTitle: true,
        ),
        backgroundColor: Color(0xFF88F096),
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF023609),
                ),
                child: Text(
                  "Toko Tanaman Polaris",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                onTap: () {
                  Get.to(kosong());
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Setting"),
                onTap: () {
                 Get.to(kosong());
                },
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text("Keranjang"),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) {
                      return kosong();
                    }),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
              ),
              ListTile(
                leading: Icon(Icons.contact_support),
                title: Text("Contact Us"),
                onTap: () {
                  Get.to(kosong());
                },
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(35),
                  child: Text(
                    "Tanaman Terlaris",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      tanaman(),
                      tanaman1(),
                      tanaman2(),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(35),
                  child: Text(
                    "Tanaman ",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      tanaman3(),
                      tanaman4(),
                      tanaman5(),
                      tanaman6(),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      tanaman(),
                      tanaman1(),
                      tanaman2(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

//class Tanaman
class tanaman extends StatefulWidget {
  const tanaman({Key? key}) : super(key: key);

  @override
  State<tanaman> createState() => _tanamanState();
}

class _tanamanState extends State<tanaman> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
       Get.to(detail());
      }),
      child: Container(
        width: 285,
        height: 265,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFF00FC00),
        ),
        child: Column(
          children: [
            Container(
              width: 250,
              height: 215,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/lidahbuaya.jpg",
                  ),
                ),
              ),
            ),
            Text(
              "Lidah Buaya",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              'Rp 15.000',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class tanaman1 extends StatefulWidget {
  const tanaman1({Key? key}) : super(key: key);

  @override
  State<tanaman1> createState() => _tanaman1State();
}

class _tanaman1State extends State<tanaman1> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
       Get.to(detail1());
      }),
      child: Container(
        width: 285,
        height: 265,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFF00FC00),
        ),
        child: Column(
          children: [
            Container(
              width: 250,
              height: 215,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/monstera.jpg",
                  ),
                ),
              ),
            ),
            Text(
              "Monstera Deliciosa",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              'Rp 150.000',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class tanaman2 extends StatefulWidget {
  const tanaman2({Key? key}) : super(key: key);

  @override
  State<tanaman2> createState() => _tanaman2State();
}

class _tanaman2State extends State<tanaman2> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
       Get.to(detail2());
      }),
      child: Container(
        width: 285,
        height: 265,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFF00FC00),
        ),
        child: Column(
          children: [
            Container(
              width: 250,
              height: 215,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/anggrekbiru.png",
                  ),
                ),
              ),
            ),
            Text(
              "Anggrek Dendrobium Biru",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              'Rp 35.000',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class tanaman3 extends StatefulWidget {
  const tanaman3({Key? key}) : super(key: key);

  @override
  State<tanaman3> createState() => _tanaman3State();
}

class _tanaman3State extends State<tanaman3> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
       Get.to(detail3());
      }),
      child: Container(
        width: 285,
        height: 265,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFF00FC00),
        ),
        child: Column(
          children: [
            Container(
              width: 250,
              height: 215,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/peace.jpg",
                  ),
                ),
              ),
            ),
            Text(
              "Peace Lily",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              'Rp 45.000',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class tanaman4 extends StatefulWidget {
  const tanaman4({Key? key}) : super(key: key);

  @override
  State<tanaman4> createState() => _tanaman4State();
}

class _tanaman4State extends State<tanaman4> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
       Get.to(detail4());
      }),
      child: Container(
        width: 285,
        height: 265,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFF00FC00),
        ),
        child: Column(
          children: [
            Container(
              width: 250,
              height: 215,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/lidahmertua.png",
                  ),
                ),
              ),
            ),
            Text(
              "Lidah Mertua",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              'Rp 30.000',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class tanaman5 extends StatefulWidget {
  const tanaman5({Key? key}) : super(key: key);

  @override
  State<tanaman5> createState() => _tanaman5State();
}

class _tanaman5State extends State<tanaman5> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
       Get.to(detail5());
      }),
      child: Container(
        width: 285,
        height: 265,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFF00FC00),
        ),
        child: Column(
          children: [
            Container(
              width: 250,
              height: 215,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/spider.jpg",
                  ),
                ),
              ),
            ),
            Text(
              "Spider Plant",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              'Rp 15.000',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class tanaman6 extends StatefulWidget {
  const tanaman6({Key? key}) : super(key: key);

  @override
  State<tanaman6> createState() => _tanaman6State();
}

class _tanaman6State extends State<tanaman6> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
       Get.to(detail6());
      }),
      child: Container(
        width: 285,
        height: 265,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFF00FC00),
        ),
        child: Column(
          children: [
            Container(
              width: 250,
              height: 215,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/hosta.jpg",
                  ),
                ),
              ),
            ),
            Text(
              "Hosta",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              'Rp 55.000',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//clas tanaman

class kosong extends StatelessWidget {
  const kosong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 120,
      margin: EdgeInsets.all(25),
      color: Color(0xFF88F096),
      alignment: Alignment.center,
      child: Text(
        "Kosong",
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
