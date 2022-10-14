import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

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
            children: [ButtonBeli()],
          ),
        ],
      ),
    );
  }
}

//  tanaman--------------------------------------------------------------------------------------------------
Widget tanaman = (Container(
  width: 285,
  height: 265,
  margin: EdgeInsets.only(top: 10, right: 10, left: 10),
  alignment: Alignment.center,
  decoration: BoxDecoration(
    color: Color(0xFF00FC00),
    borderRadius: BorderRadius.circular(10),
  ),
  child: containerTanaman,
));

Widget tanaman1 = (Container(
  width: 285,
  height: 265,
  margin: EdgeInsets.only(top: 10, right: 10),
  alignment: Alignment.center,
  decoration: BoxDecoration(
    color: Color(0xFF00FC00),
    borderRadius: BorderRadius.circular(10),
  ),
  child: containerTanaman1,
));

Widget tanaman2 = (Container(
  width: 285,
  height: 265,
  margin: EdgeInsets.only(top: 10, right: 10),
  alignment: Alignment.center,
  decoration: BoxDecoration(
    color: Color(0xFF00FC00),
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
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(image: AssetImage("assets/anggrekbiru.png")),
      ),
    ),
    namatanaman(tanaman: "Anggrek Dendrobium Biru"),
    namatanaman(tanaman: "Rp 30.000")
  ],
));

Widget containerTanaman1 = (Column(
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
));

Widget containerTanaman2 = (Column(
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
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: isActive ? Color(0xFF023609) : Color(0xFFFFFFFF),
      ),
    );
  }
}
//  namatanaman-----------------------------------------------------------------------------------------------

// class button---------------------------------------------------------------------------------------------------
class ButtonBeli extends StatefulWidget {
  const ButtonBeli({Key? key}) : super(key: key);

  @override
  State<ButtonBeli> createState() => _ButtonBeliState();
}

class _ButtonBeliState extends State<ButtonBeli> {
  String NamaDepan = "", alamat = "", Namabelakang = "";
  TextEditingController controllerNamaDepan = TextEditingController();
  TextEditingController controllerAlamat = TextEditingController();
  TextEditingController controllerNamabelakang = TextEditingController();

  String groupValue = "";
  List<String> radioValue = ["BRI", "Mandiri", "BNI", "Gopay", "Ovo"];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controllerNamaDepan.dispose();
    controllerAlamat.dispose();
    controllerNamabelakang.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 50),
      button1(),
      button2(),
      button3(),
      input(),
    ]);
  }
}
// class button-------------------

class button1 extends StatefulWidget {
  const button1({Key? key}) : super(key: key);

  @override
  State<button1> createState() => _button1State();
}

class _button1State extends State<button1> {
  int jumlah = 0;
  bool? anggrek = false;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(height: 50),
      Column(
        children: [
          Text(
            "Anggrek",
            style: TextStyle(fontSize: 18),
          ),
          Checkbox(
            value: anggrek,
            onChanged: (value) {
              anggrek = value;
              setState(() {});
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        jumlah++;
                      });
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
                          child: Text(
                            "Tambah",
                            style: TextStyle(
                                fontFamily: "Sunny April", color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        jumlah--;
                      });
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
                          child: Text(
                            "Kurang",
                            style: TextStyle(
                                fontFamily: "Sunny April", color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            "$jumlah",
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: "Sunny April"),
          ),
        ],
      ),
    ]);
  }
}

class button2 extends StatefulWidget {
  const button2({Key? key}) : super(key: key);

  @override
  State<button2> createState() => _button2State();
}

class _button2State extends State<button2> {
  int jumlah = 0;
  bool? lidahmertua = false;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(height: 50),
      Column(
        children: [
          Text(
            "Lidah Mertua",
            style: TextStyle(fontSize: 18),
          ),
          Checkbox(
            value: lidahmertua,
            onChanged: (value) {
              lidahmertua = value;
              setState(() {});
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        jumlah++;
                      });
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
                          child: Text(
                            "Tambah",
                            style: TextStyle(
                                fontFamily: "Sunny April", color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        jumlah--;
                      });
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
                          child: Text(
                            "Kurang",
                            style: TextStyle(
                                fontFamily: "Sunny April", color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            "$jumlah",
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: "Sunny April"),
          ),
        ],
      ),
    ]);
  }
}

class button3 extends StatefulWidget {
  const button3({Key? key}) : super(key: key);

  @override
  State<button3> createState() => _button3State();
}

class _button3State extends State<button3> {
  int jumlah = 0;
  bool? lidahbuaya = false;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(height: 50),
      Column(
        children: [
          Text(
            "Lidah Buaya",
            style: TextStyle(fontSize: 18),
          ),
          Checkbox(
            value: lidahbuaya,
            onChanged: (value) {
              lidahbuaya = value;
              setState(() {});
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        jumlah++;
                      });
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
                          child: Text(
                            "Tambah",
                            style: TextStyle(
                                fontFamily: "Sunny April", color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        jumlah--;
                      });
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
                          child: Text(
                            "Kurang",
                            style: TextStyle(
                                fontFamily: "Sunny April", color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            "$jumlah",
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: "Sunny April"),
          ),
        ],
      ),
    ]);
  }
}

//class button -----------------------------------------------------------------------------------------------------------

class input extends StatefulWidget {
  const input({Key? key}) : super(key: key);

  @override
  State<input> createState() => _inputState();
}

class _inputState extends State<input> {
  String NamaDepan = "", alamat = "", Namabelakang = "";
  TextEditingController controllerNamaDepan = TextEditingController();
  TextEditingController controllerAlamat = TextEditingController();
  TextEditingController controllerNamabelakang = TextEditingController();

  String groupValue = "";
  List<String> radioValue = ["BRI", "Mandiri", "BNI", "Gopay", "OVO"];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controllerNamaDepan.dispose();
    controllerAlamat.dispose();
    controllerNamabelakang.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "\nPesanan",
              style: TextStyle(
                fontFamily: "Sunny April",
                fontSize: 20,
              ),
            ),
            TextField(
              controller: controllerNamaDepan,
              decoration: InputDecoration(
                hintText: "Masukkan Nama Depan",
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              controller: controllerNamabelakang,
              decoration: InputDecoration(
                hintText: "Masukkan Nama Belakang",
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              controller: controllerAlamat,
              maxLines: 4,
              decoration: InputDecoration(
                hintText: "Masukkan Alamat",
                border: OutlineInputBorder(),
              ),
            ),
            Text(
              "Jenis Pembayaran",
              style: TextStyle(fontSize: 18),
            ),
            for (var item in radioValue)
              Row(
                children: [
                  Radio(
                    value: item,
                    groupValue: groupValue,
                    onChanged: (value) {
                      groupValue = value.toString();
                      print(groupValue);
                      setState(() {});
                    },
                  ),
                  Text(item, style: TextStyle(fontSize: 18)),
                ],
              ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color(0xFF023609),
                  shadowColor: Colors.white,
                  elevation: 5),
              onPressed: () {
                setState(() {
                  NamaDepan = controllerNamaDepan.text;
                  Namabelakang = controllerNamabelakang.text;
                  alamat = controllerAlamat.text;
                });
              },
              child: Text("Submit"),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              "Data Pembelian",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "Nama Depan           : $NamaDepan",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "Nama Belakang        : $Namabelakang",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "Alamat               : $alamat",
              style: TextStyle(fontSize: 18),
            ),
          ],
        )
      ],
    );
  }
}
