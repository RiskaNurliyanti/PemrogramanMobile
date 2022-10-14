import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.home,
          color: Colors.white,
        ),
        title: Text('Toko Tanaman Polaris'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Color(0xFF023609),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          )
        ],
        centerTitle: true,
      ),
      backgroundColor: Color(0xFF88F096),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: size.width,
                height: size.height * 0.2,
                margin: EdgeInsets.only(top: 30, bottom: 10),
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/daun.png"))),
              ),
              Text(
                "Riska Nurliyanti",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF023609),
                ),
              ),
              Text(
                "Belanja Tanaman Di Sini",
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
          //untuk membuat tampilan column dari tanaman
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              tanaman(),
              tanaman1(),
              tanaman2(),
              ButtonBeli(),
            ],
          ),
        ],
      ),
    );
  }
}

// class tanaman--------------------------------------------------------------------------------------------------
class tanaman extends StatelessWidget {
  const tanaman({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 285,
      height: 265,
      margin: EdgeInsets.only(top: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xFF00FC00),
        borderRadius: BorderRadius.circular(10),
      ),
      child: containerTanaman(),
    );
  }
}

class tanaman1 extends StatelessWidget {
  const tanaman1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 285,
      height: 265,
      margin: EdgeInsets.only(top: 30),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xFF00FC00),
        borderRadius: BorderRadius.circular(10),
      ),
      child: containerTanaman1(),
    );
  }
}

class tanaman2 extends StatelessWidget {
  const tanaman2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 285,
      height: 265,
      margin: EdgeInsets.only(top: 30),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xFF00FC00),
        borderRadius: BorderRadius.circular(10),
      ),
      child: containerTanaman2(),
    );
  }
}
// class tanaman--------------------------------------------------------------------------------------------------

// class gambartanaman--------------------------------------------------------------------------------------------
class containerTanaman extends StatelessWidget {
  const containerTanaman({Key? key, this.isActive = false}) : super(key: key);
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 280,
          height: 175,
          alignment: Alignment.center,
          margin: EdgeInsets.only(bottom: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(image: AssetImage("assets/anggrekbiru.png")),
          ),
        ),
        namatanaman(tanaman: "Anggrek Dendrobium Biru"),
        namatanaman(tanaman: "Rp 30.000")
      ],
    );
  }
}

class containerTanaman1 extends StatelessWidget {
  const containerTanaman1({Key? key, this.isActive = false}) : super(key: key);
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 295,
          height: 175,
          alignment: Alignment.center,
          margin: EdgeInsets.only(bottom: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(image: AssetImage("assets/lidahmertua.png")),
          ),
        ),
        namatanaman(isActive: true, tanaman: "Lidah Mertua"),
        namatanaman(isActive: true, tanaman: "Rp 35.000")
      ],
    );
  }
}

class containerTanaman2 extends StatelessWidget {
  const containerTanaman2({Key? key, this.isActive = false}) : super(key: key);
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 280,
          height: 175,
          alignment: Alignment.center,
          margin: EdgeInsets.only(bottom: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(image: AssetImage("assets/lidahbuaya.jpg")),
          ),
        ),
        namatanaman(tanaman: "Lidah Buaya"),
        namatanaman(tanaman: "Rp 15.000")
      ],
    );
  }
}
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
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: isActive ? Color(0xFF023609) : Color(0xFFFFFFFF),
      ),
    );
  }
}
// class namatanaman-----------------------------------------------------------------------------------------------

// class button---------------------------------------------------------------------------------------------------
class ButtonBeli extends StatelessWidget {
  const ButtonBeli({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 55,
      margin: EdgeInsets.only(top: 50, bottom: 20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xFF023609),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        "Beli",
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
// class button---------------------------------------------------------------------------------------------------
