import 'dart:math';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:toko_tanaman_polaris/constants.dart';

import 'package:toko_tanaman_polaris/models/Product.dart';
import 'package:toko_tanaman_polaris/screens/menu_home/home.dart';
import 'package:get/get.dart';

class ItemCard extends StatelessWidget {
  final String nama;
  final String alamat;
  final String plant;
  final int beli;
  final int harga;
  final String Nohp;
  final String status;
  final String metode;

  //// Pointer to Update Function
  final Function? onUpdate;
  //// Pointer to Delete Function
  final Function? onDelete;

  ItemCard(this.nama, this.alamat, this.plant, this.beli, this.harga, this.Nohp,
      this.metode, this.status,
      {this.onUpdate, this.onDelete});

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference pesanan = firestore.collection('pesanan');

    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: kTextLightColor)),
            child: Row(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  child: Text(
                                    'Nama : $nama',
                                    style: TextStyle(
                                      fontWeight: reguler,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Alamat : $alamat ',
                                  style: TextStyle(
                                    fontWeight: reguler,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Tanaman : $plant',
                                  style: TextStyle(
                                    fontWeight: reguler,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Jumlah : ${beli.toInt()}',
                                  style: TextStyle(
                                    fontWeight: reguler,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Total Harga : $harga',
                                  style: TextStyle(
                                    fontWeight: reguler,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'No Hp : $Nohp',
                                  style: TextStyle(
                                    fontWeight: reguler,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Metode Pembayaran : $metode',
                                  style: TextStyle(
                                    fontWeight: reguler,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Pembayaran : $status',
                                  style: TextStyle(
                                    fontWeight: reguler,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(
                              height: 40,
                              width: 60,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    primary: Colors.blue,
                                  ),
                                  child: Center(
                                      child: Icon(
                                    Icons.arrow_upward,
                                    color: Colors.white,
                                  )),
                                  onPressed: () {
                                    if (onUpdate != null) onUpdate!();
                                  }),
                            ),
                            SizedBox(
                              height: 40,
                              width: 60,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    primary: Colors.red,
                                  ),
                                  child: Center(
                                      child: Icon(
                                    Icons.delete,
                                    color: Colors.white,
                                  )),
                                  onPressed: () {
                                    if (onDelete != null) onDelete!();
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
