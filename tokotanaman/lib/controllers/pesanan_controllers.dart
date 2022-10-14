import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';

class Form_Content extends GetxController {
  var nama = "".obs;
  var alamat = "".obs;
  var noHp = "".obs;

  final controllerNama = TextEditingController();
  final controllerAlamat = TextEditingController();
  final controllerNoHp = TextEditingController();
}
