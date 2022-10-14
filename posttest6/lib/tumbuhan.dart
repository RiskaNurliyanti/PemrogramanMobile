import 'package:flutter/material.dart';
import 'pesan.dart';
import 'home.dart';
import 'state.dart';
import 'package:get/get.dart';

class tanaman extends StatefulWidget {
  const tanaman({Key? key}) : super(key: key);

  @override
  State<tanaman> createState() => _tanamanState();
}

class _tanamanState extends State<tanaman> {
  @override
  Widget build(BuildContext context) {
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
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Get.to(Home());
              },
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
                Get.to(kosong());
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                Get.to(kosong());
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
        children: [],
      ),
    );
  }
}

//class detail tanaman

class detail extends StatelessWidget {
  detail({Key? key}) : super(key: key);

  final jumlah j = Get.put(jumlah());

  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Tanaman"),
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
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Get.to(Home());
              },
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
                Get.to(kosong());
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                Get.to(kosong());
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
          Container(
            margin: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Text(
              "Lidah Buaya",
              style: TextStyle(
                fontSize: 28,
              ),
            ),
          ),
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
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              "Lidah buaya (Aloe vera) adalah spesies tumbuhan dengan daun berdaging tebal dari genus Aloe. Tumbuhan ini bersifat menahun, berasal dari Jazirah Arab, dan tanaman liarnya telah menyebar ke kawasan beriklim tropis, semi-tropis, dan kering di berbagai belahan dunia. Tanaman lidah buaya banyak dibudidayakan untuk pertanian, pengobatan, dan tanaman hias, dan dapat juga ditanam di dalam pot. Tinggi : 10-15cm",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      j.kurang();
                      tooltip:
                      'kurang';
                      child:
                      Icon(Icons.delete);
                    },
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFF023609),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      j.tambah();
                      tooltip:
                      'tambah';
                      child:
                      Icon(Icons.delete);
                    },
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFF023609),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Obx(
            () => Text("${j.total}",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF023609), shadowColor: Colors.white),
                  onPressed: (() {
                    Get.back();
                  }),
                  child: Text("Kembali"),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF023609), shadowColor: Colors.white),
                    onPressed: (() {
                      Get.to(pesan());
                    }),
                    child: Text("Next"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class detail1 extends StatelessWidget {
  detail1({Key? key}) : super(key: key);

  final jumlah1 j = Get.put(jumlah1());

  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Tanaman"),
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
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Get.to(Home());
              },
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
                Get.to(kosong());
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                Get.to(kosong());
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
          Container(
            margin: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Text(
              "Monstera Deliciosa",
              style: TextStyle(
                fontSize: 28,
              ),
            ),
          ),
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
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              "Spesies tanaman berbunga asli hutan tropis Meksiko selatan, selatan hingga Panama. Tinggi : 30 - 60cm",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      j.kurang();
                      tooltip:
                      'kurang';
                      child:
                      Icon(Icons.delete);
                    },
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFF023609),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      j.tambah();
                      tooltip:
                      'tambah';
                      child:
                      Icon(Icons.delete);
                    },
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFF023609),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Obx(
            () => Text("${j.total}",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF023609), shadowColor: Colors.white),
                  onPressed: (() {
                    Get.back();
                  }),
                  child: Text("Kembali"),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF023609), shadowColor: Colors.white),
                    onPressed: (() {
                      Get.to(pesan());
                    }),
                    child: Text("Next"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class detail2 extends StatelessWidget {
  detail2({Key? key}) : super(key: key);
  final jumlah2 j = Get.put(jumlah2());

  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Tanaman"),
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
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Get.to(Home());
              },
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
                Get.to(kosong());
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                Get.to(kosong());
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
          Container(
            margin: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Text(
              "Anggrek Dendrobium Biru",
              style: TextStyle(
                fontSize: 28,
              ),
            ),
          ),
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
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              "Dendrobium adalah salah satu jenis anggrek epifit yang biasa digunakan sebagai tanaman hias ruang atau taman. Bunganya sangat bervariasi dan indah. Dendrobium relatif mudah dipelihara dan berbunga. Tinggi : 25-30cm",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      j.kurang();
                      tooltip:
                      'kurang';
                      child:
                      Icon(Icons.delete);
                    },
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFF023609),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      j.tambah();
                      tooltip:
                      'tambah';
                      child:
                      Icon(Icons.delete);
                    },
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFF023609),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Obx(
            () => Text("${j.total}",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF023609), shadowColor: Colors.white),
                  onPressed: (() {
                    Get.back();
                  }),
                  child: Text("Kembali"),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF023609), shadowColor: Colors.white),
                    onPressed: (() {
                      Get.to(pesan());
                    }),
                    child: Text("Next"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class detail3 extends StatelessWidget {
  detail3({Key? key}) : super(key: key);

  final jumlah3 j = Get.put(jumlah3());

  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Tanaman"),
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
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Get.to(Home());
              },
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
                Get.to(kosong());
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                Get.to(kosong());
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
          Container(
            margin: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Text(
              "Peace Lily",
              style: TextStyle(
                fontSize: 28,
              ),
            ),
          ),
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
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              "Peace Lily merupakan tumbuhan berbunga dari golongan planta acaulis atau jenis tumbuhan yang tidak memiliki batang. Tinggi : 20-40cm",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      j.kurang();
                      tooltip:
                      'kurang';
                      child:
                      Icon(Icons.delete);
                    },
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFF023609),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      j.tambah();
                      tooltip:
                      'tambah';
                      child:
                      Icon(Icons.delete);
                    },
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFF023609),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Obx(
            () => Text("${j.total}",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF023609), shadowColor: Colors.white),
                  onPressed: (() {
                    Get.back();
                  }),
                  child: Text("Kembali"),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF023609), shadowColor: Colors.white),
                    onPressed: (() {
                      Get.to(pesan());
                    }),
                    child: Text("Next"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class detail4 extends StatelessWidget {
  detail4({Key? key}) : super(key: key);

  final jumlah4 j = Get.put(jumlah4());

  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Tanaman"),
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
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Get.to(Home());
              },
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
                Get.to(kosong());
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                Get.to(kosong());
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
          Container(
            margin: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Text(
              "Lidah Mertua",
              style: TextStyle(
                fontSize: 28,
              ),
            ),
          ),
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
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              "Dapat tumbuh dalam kondisi yang sedikit air dan cahaya matahari. Tinggi : 10-15cm ",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      j.kurang();
                      tooltip:
                      'kurang';
                      child:
                      Icon(Icons.delete);
                    },
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFF023609),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      j.tambah();
                      tooltip:
                      'tambah';
                      child:
                      Icon(Icons.delete);
                    },
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFF023609),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Obx(
            () => Text("${j.total}",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF023609), shadowColor: Colors.white),
                  onPressed: (() {
                    Get.back();
                  }),
                  child: Text("Kembali"),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF023609), shadowColor: Colors.white),
                    onPressed: (() {
                      Get.to(pesan());
                    }),
                    child: Text("Next"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class detail5 extends StatelessWidget {
  detail5({Key? key}) : super(key: key);

  final jumlah5 j = Get.put(jumlah5());

  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Tanaman"),
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
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Get.to(Home());
              },
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
                Get.to(kosong());
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                Get.to(kosong());
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
          Container(
            margin: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Text(
              "Spider Plant",
              style: TextStyle(
                fontSize: 28,
              ),
            ),
          ),
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
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              "Spider plant adalah tumbuhan dengan nama ilmiah Chlorophytum comosum. Tanaman hias ini mampu mempunyai tinggi mencapai 60 cm. Tumbuhan ini dapat ditanam dalam pot dalam ruangan. Sebagai pembersih udara tumbuhan ini mampu menyerap benzena, formaldehida, karbon monoksida, dan xilena serta mampu menyerap bahan kimia pada industri kulit dan karet. Tinggi : 30-38cm",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      j.kurang();
                      tooltip:
                      'kurang';
                      child:
                      Icon(Icons.delete);
                    },
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFF023609),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      j.tambah();
                      tooltip:
                      'tambah';
                      child:
                      Icon(Icons.delete);
                    },
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFF023609),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Obx(
            () => Text("${j.total}",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF023609), shadowColor: Colors.white),
                  onPressed: (() {
                    Get.back();
                  }),
                  child: Text("Kembali"),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF023609), shadowColor: Colors.white),
                    onPressed: (() {
                      Get.to(pesan());
                    }),
                    child: Text("Next"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class detail6 extends StatelessWidget {
  detail6({Key? key}) : super(key: key);

  final jumlah6 j = Get.put(jumlah6());

  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Tanaman"),
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
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Get.to(Home());
              },
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
                Get.to(kosong());
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                Get.to(kosong());
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
          Container(
            margin: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Text(
              "Hosta",
              style: TextStyle(
                fontSize: 28,
              ),
            ),
          ),
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
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              "Tanaman ini sangat toleran terhadap sinar matahari langsung maupun di dalam ruangan. Tinggi : 10-15cm",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      j.kurang();
                      tooltip:
                      'kurang';
                      child:
                      Icon(Icons.delete);
                    },
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFF023609),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      j.tambah();
                      tooltip:
                      'tambah';
                      child:
                      Icon(Icons.delete);
                    },
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFF023609),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Obx(
            () => Text("${j.total}",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF023609), shadowColor: Colors.white),
                  onPressed: (() {
                    Get.back();
                  }),
                  child: Text("Kembali"),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF023609), shadowColor: Colors.white),
                    onPressed: (() {
                      Get.to(pesan());
                    }),
                    child: Text("Next"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//class detail tanaman
