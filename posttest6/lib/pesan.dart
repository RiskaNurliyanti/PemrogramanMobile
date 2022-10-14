import 'package:flutter/material.dart';
import 'package:posttest6_2009106017_riskanurliyanti/state.dart';
import 'home.dart';
import "alert.dart";
import 'package:get/get.dart';

class pesan extends StatefulWidget {
  const pesan({Key? key}) : super(key: key);

  @override
  State<pesan> createState() => _pesan();
}

enum Tipe { unknown, BRI, Mandiri, BNI, Gopay, OVO }

class _pesan extends State<pesan> {
  final controllerNamaDepan = TextEditingController();
  final controllerNamaBelakang = TextEditingController();
  final controllerAlamat = TextEditingController();
  Tipe tipe = Tipe.unknown;

  bool isSetuju = false;
  String namaDepan = "", namaBelakang = '', alamat = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controllerNamaDepan.dispose();
    controllerNamaBelakang.dispose();
    controllerAlamat.dispose();
    super.dispose();
  }

  int angka = 0;

  String gettipe(Tipe? value) {
    if (value == Tipe.BRI) {
      return "BRI";
    } else if (value == Tipe.Mandiri) {
      return "Mandiri";
    } else if (value == Tipe.BNI) {
      return "BNI";
    } else if (value == Tipe.Gopay) {
      return "Gopay";
    } else if (value == Tipe.OVO) {
      return "OVO";
    }
    return "Anda Belum Memilih Metode Pembayaran";
  }

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
                Get.off(Home());
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
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20), // Margin Bohongan
              Text('Form Pemesanan '),
              const SizedBox(height: 20), // Margin Bohongan
              TextField(
                maxLines: 3,
                controller: controllerNamaDepan,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Nama Depan ",
                  hintText: 'Isi Nama Depan ',
                ),
              ),
              const SizedBox(height: 20), // Margin Bohongan
              TextFormField(
                maxLines: 3,
                controller: controllerNamaBelakang,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Nama Belakang ',
                    labelText: "Isi Nama Belakang "),
              ),
              const SizedBox(height: 20), // Margin Bohongan
              TextFormField(
                maxLines: 3,
                controller: controllerAlamat,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Alamat',
                    labelText: "Isi Alamat"),
              ),
              Column(
                children: [
                  Container(
                    child: ListTile(
                      title: const Text("BRI"),
                      leading: Radio(
                        groupValue: tipe,
                        value: Tipe.BRI,
                        onChanged: (Tipe? value) {
                          setState(() {
                            tipe = value!;
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                    child: ListTile(
                      title: const Text("Mandiri"),
                      leading: Radio(
                        groupValue: tipe,
                        value: Tipe.Mandiri,
                        onChanged: (Tipe? value) {
                          setState(() {
                            tipe = value!;
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                    child: ListTile(
                      title: const Text("BNI"),
                      leading: Radio(
                        groupValue: tipe,
                        value: Tipe.BNI,
                        onChanged: (Tipe? value) {
                          setState(() {
                            tipe = value!;
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                    child: ListTile(
                      title: const Text("Gopay"),
                      leading: Radio(
                        groupValue: tipe,
                        value: Tipe.Gopay,
                        onChanged: (Tipe? value) {
                          setState(() {
                            tipe = value!;
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                    child: ListTile(
                      title: const Text("OVO"),
                      leading: Radio(
                        groupValue: tipe,
                        value: Tipe.OVO,
                        onChanged: (Tipe? value) {
                          setState(() {
                            tipe = value!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFF023609),
                shadowColor: Colors.white,
                elevation: 5),
            onPressed: () {
              setState(() {
                namaDepan = controllerNamaDepan.text;
                namaBelakang = controllerNamaBelakang.text;
                alamat = controllerAlamat.text;
                alert(context, "Berhasil Memesan Tanaman !!!");
              });
            },
            child: const Text(
              "Pesan",
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20), // Margin Bohongan
          Text(
            'Berikut Rincian Pesanan Anda: ',
            style: TextStyle(fontSize: 18),
          ),
          Text('Nama  : $namaDepan $namaBelakang',
              style: TextStyle(fontSize: 18)),
          Text('Alamat  : $alamat', style: TextStyle(fontSize: 18)),
          Text('Jenis Pembayaran : ${gettipe(tipe)} ',
              style: TextStyle(fontSize: 18)),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
