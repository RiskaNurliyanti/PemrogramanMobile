import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toko_tanaman_polaris/controllers/addpesanan_controller.dart';
import 'package:toko_tanaman_polaris/controllers/jumlah_controller.dart';
import 'package:toko_tanaman_polaris/controllers/metode_bayar_controller.dart';
import 'package:toko_tanaman_polaris/screens/mainpage.dart';
import 'package:toko_tanaman_polaris/screens/menu_home/home.dart';
import 'package:toko_tanaman_polaris/constants.dart';
import 'package:toko_tanaman_polaris/controllers/pesanan_controllers.dart';
import 'package:toko_tanaman_polaris/models/Product.dart';
import 'package:toko_tanaman_polaris/screens/pemesanan/pesanan_alert.dart';

class form_pesan extends StatelessWidget {
  form_pesan({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference pesanan = firestore.collection('pesanan');

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Form Pemesanan",
          style: TextStyle(color: kTextColor),
        ),
        backgroundColor: kBackgroundColor,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/back.svg',
            color: kTextColor,
          ),
          onPressed: () => Get.back(),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home_filled, color: kTextColor),
            onPressed: () {
              Get.off(MyMainPage());
            },
          ),
          const SizedBox(width: kDefaultPaddin / 2)
        ],
      ),
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [
          SizedBox(
            height: kDefaultPaddin,
          ),
          buildCard(
            Icons.request_page,
            "Pesan Tanaman",
          ),
          SizedBox(
            height: kDefaultPaddin,
          ),
          Column(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: product.title,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: kTextColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: kDefaultPaddin),
              Container(
                child: Image.asset(
                  product.image,
                  width: 200,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
          form(product),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: kTextLightColor,
                shadowColor: Colors.white,
                elevation: 5),
            onPressed: () {
              a.addpesan(product);
              alert(context, 'Berhasil Memesan!!!');
            },
            child: const Text(
              "Pesan",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}

final AddPesananController a = Get.put(AddPesananController());
final Form_Content fc = Get.put(Form_Content());
final jumlah j = Get.put(jumlah());
final BayarController bc = Get.put(BayarController());

// final pesanan ps = Get.put(pesanan());

// pemesanan
Widget form(Product product) {
  return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
    SizedBox(
      height: kDefaultPaddin,
    ),
    RichText(
      text: TextSpan(children: [
        TextSpan(
          text: "Rp. ${product.price}",
          style: TextStyle(
              color: kTextColor, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ]),
    ),
    const SizedBox(height: 20), // Margin Bohongan
    const SizedBox(height: 20), // Margin Bohongan
    TextField(
      controller: fc.controllerNama,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Nama Lengkap ",
        hintText: 'Isi Nama Lengkap ',
      ),
    ),
    const SizedBox(height: kDefaultPaddin),
    TextFormField(
      maxLines: 2,
      controller: fc.controllerAlamat,
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Alamat',
          labelText: "Isi Alamat"),
    ),
    const SizedBox(height: kDefaultPaddin),
    TextFormField(
      controller: fc.controllerNoHp,
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Nomor Hp',
          labelText: "Isi Nomor Hp"),
      keyboardType: TextInputType.number,
    ),
    const SizedBox(height: kDefaultPaddin),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                j.kurang();
                child:
                const Icon(Icons.delete);
              },
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                        color: kTextLightColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
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
                child:
                const Icon(Icons.delete);
              },
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                        color: kTextLightColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
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
    const SizedBox(height: kDefaultPaddin),
    Obx(
      () => Text("${j.total} \n Total Harga ${j.total * product.price}",
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: kTextColor, fontSize: 25)),
    ),
    // TextFormField(
    //   maxLines: 3,
    //   controller: pc.controllertotal,
    //   decoration: const InputDecoration(
    //       border: OutlineInputBorder(),
    //       hintText: 'Total Harga Pembelian',
    //       labelText: "Harga"),
    // ),

    for (var jenis in bc.bayar)
      Column(
        children: [
          Radio(
            value: jenis,
            groupValue: bc.groupValue,
            onChanged: (value) {
              bc.groupValue = value.toString();
              print(bc.groupValue);
              bc.update();
              bc.metodebayar = jenis;
            },
          ),
          Text(jenis),
        ],
      )
  ]);
}


//card View
Card buildCard(IconData iconData, String text) {
  return Card(
    elevation: 5,
    child: Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(7),
          child: Icon(iconData),
        ),
        Text(
          text,
          style: TextStyle(color: kTextLightColor),
        )
      ],
    ),
  );
}
