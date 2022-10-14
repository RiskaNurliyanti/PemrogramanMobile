import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toko_tanaman_polaris/constants.dart';
import 'package:toko_tanaman_polaris/controllers/pesanan_controllers.dart';
import 'package:toko_tanaman_polaris/screens/mainpage.dart';
import 'package:toko_tanaman_polaris/screens/pemesanan/item_card_riwayat.dart';

class riwayat extends StatelessWidget {
  const riwayat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Form_Content fc = Get.put(Form_Content());
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference pesanan = firestore.collection('pesanan');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        // leading: IconButton(
        //   icon: SvgPicture.asset(
        //     'assets/icons/back.svg',
        //     color: kTextColor,
        //   ),
        //   onPressed: () {
        //     Get.back();
        //   },
        // ),
        title: Text(
          'Daftar Pesanan',
          style: TextStyle(color: kTextLightColor, fontSize: 25),
        ),
        centerTitle: true,
      ),
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          ListView(
            children: [
              //firebase
              StreamBuilder<QuerySnapshot>(
                stream: pesanan.snapshots(),
                builder: (_, snapshot) {
                  return (snapshot.hasData)
                      ? Column(
                          children: snapshot.data!.docs
                              .map(
                                (f) => ItemCard(
                                  f.get('nama'),
                                  f.get('alamat'),
                                  f.get('tanaman'),
                                  f.get('beli'),
                                  f.get('harga'),
                                  f.get('No Hp'),
                                  f.get('metode'),
                                  f.get('status'),
                                  onUpdate: () {
                                    pesanan.doc(f.id).update(
                                        {'status': f.get('status') + 'Sudah'});
                                  },
                                  onDelete: () {
                                    pesanan.doc(f.id).delete();
                                  },
                                ),
                              )
                              .toList(),
                        )
                      : Text('Loading...');
                },
              ),

              ///
              SizedBox(height: 150)
            ],
          ),
        ],
      ),
    );
  }
}
