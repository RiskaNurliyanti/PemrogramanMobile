import 'package:flutter/material.dart';

class Product {
  String image, title, description;
  int price, stock, id, jumlah;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.stock,
    required this.jumlah,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Anggrek Biru",
    price: 30000,
    stock: 12,
    description:
        "Dendrobium adalah salah satu jenis anggrek epifit yang biasa digunakan sebagai tanaman hias ruang atau taman. Bunganya sangat bervariasi dan indah. Dendrobium relatif mudah dipelihara dan berbunga. Tinggi : 25-30cm",
    image: "assets/images/anggrekbiru.png",
    jumlah: 0,
  ),
  Product(
    id: 2,
    title: "Lidah Mertua",
    price: 35000,
    stock: 8,
    description:
        "Dapat tumbuh dalam kondisi yang sedikit air dan cahaya matahari. Tinggi : 10-15cm ",
    image: "assets/images/lidahmertua.png",
    jumlah: 0,
  ),
  Product(
    id: 3,
    title: "Lidah Buaya",
    price: 15000,
    stock: 10,
    description:
        "Lidah buaya (Aloe vera) adalah spesies tumbuhan dengan daun berdaging tebal dari genus Aloe. Tanaman lidah buaya banyak dibudidayakan untuk pertanian, pengobatan, dan tanaman hias, dan dapat juga ditanam di dalam pot. Tinggi : 10-15cm",
    image: "assets/images/lidahbuaya.jpg",
    jumlah: 0,
  ),
  Product(
    id: 4,
    title: "Monstera Deliciosa",
    price: 150000,
    stock: 10,
    description:
        "Spesies tanaman berbunga asli hutan tropis Meksiko selatan, selatan hingga Panama. Tinggi : 30 - 60cm",
    image: "assets/images/monstera.jpg",
    jumlah: 0,
  ),
  Product(
    id: 5,
    title: "Peace Lily",
    price: 45000,
    stock: 10,
    description:
        "Peace Lily merupakan tumbuhan berbunga dari golongan planta acaulis atau jenis tumbuhan yang tidak memiliki batang. Tinggi : 20-40cm",
    image: "assets/images/peace.jpg",
    jumlah: 0,
  ),
  Product(
    id: 6,
    title: "Spider Plant",
    price: 15000,
    stock: 10,
    description:
        "Tanaman hias ini mampu mempunyai tinggi mencapai 60 cm. Tumbuhan ini dapat ditanam dalam pot dalam ruangan. Sebagai tumbuhan pembersih udara. Tinggi : 30-38cm",
    image: "assets/images/spider.jpg",
    jumlah: 0,
  ),
];

// String dummyText =
//     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
