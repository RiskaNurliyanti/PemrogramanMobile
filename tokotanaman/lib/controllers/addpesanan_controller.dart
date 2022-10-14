import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toko_tanaman_polaris/constants.dart';
import 'package:toko_tanaman_polaris/controllers/metode_bayar_controller.dart';
import 'package:toko_tanaman_polaris/screens/pemesanan/pesanan_alert.dart';
import 'package:toko_tanaman_polaris/controllers/jumlah_controller.dart';
import 'package:toko_tanaman_polaris/controllers/pesanan_controllers.dart';
import 'package:toko_tanaman_polaris/models/Product.dart';
import 'package:toko_tanaman_polaris/screens/pemesanan/pesanan_alert.dart';

class AddPesananController extends GetxController {
  final Form_Content fc = Get.find();
  final jumlah j = Get.find();
  final BayarController bc = Get.find();

  var Status = ("");

  void addpesan(Product product) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference pesanan = firestore.collection('pesanan');

    try {
      await pesanan.add({
        'nama': fc.controllerNama.text,
        'alamat': fc.controllerAlamat.text,
        'tanaman': product.title,
        'beli': j.total.toInt(),
        'harga': (j.total.toInt() * product.price),
        'No Hp': fc.controllerNoHp.text,
        'metode': bc.groupValue,
        'status': Status.toString(),
      });
    } catch (e) {
      Get.defaultDialog(
        title: 'Terjadi Kesalahan',
        middleText: 'Tidak Bisa menambahkan Pesanan',
        onConfirm: () => Get.back(),
        textConfirm: 'Oke',
        backgroundColor: kBackgroundColor,
        buttonColor: kTextLightColor,
      );
    }
  }
}
