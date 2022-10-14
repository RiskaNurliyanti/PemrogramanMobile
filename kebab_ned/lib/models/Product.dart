import 'package:flutter/material.dart';

class Product {
  final String image, title, description, topping;
  final int price, stock, id, jumlah;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.stock,
    required this.jumlah,
    required this.topping,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Kebab Tempe",
      price: 340000,
      stock: 12,
      description: dummyText,
      image: "Assets/tempe.jpeg",
      jumlah: 0,
      topping: ""),
  Product(
      id: 2,
      title: "Kebab Kornet",
      price: 450000,
      stock: 8,
      description: dummyText,
      image: "Assets/kornet.jpeg",
      jumlah: 0,
      topping: ""),
  Product(
      id: 3,
      title: "Kebab Original",
      price: 120000,
      stock: 10,
      description: dummyText,
      image: "Assets/original.jpeg",
      jumlah: 0,
      topping: ""),
  Product(
      id: 4,
      title: "Kebab Sosis",
      price: 120000,
      stock: 10,
      description: dummyText,
      image: "Assets/sosis.jpeg",
      jumlah: 0,
      topping: ""),
  Product(
      id: 5,
      title: "Kebab Jumbo",
      price: 120000,
      stock: 10,
      description: dummyText,
      image: "Assets/Jumbo.jpeg",
      jumlah: 0,
      topping: ""),
  Product(
      id: 6,
      title: "Kebab Mix",
      price: 120000,
      stock: 10,
      description: dummyText,
      image: "Assets/mix.jpeg",
      jumlah: 0,
      topping: ""),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
