import 'package:flutter/material.dart';
import 'package:toko_tanaman_polaris/screens/Profil_Toko.dart';
import 'package:toko_tanaman_polaris/screens/menu_home/home.dart';
import 'package:toko_tanaman_polaris/screens/pemesanan/riwayat.dart';

class MyMainPage extends StatefulWidget {
  MyMainPage({Key? key}) : super(key: key);

  @override
  State<MyMainPage> createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {
  final List<Widget> _children = [
    HomeScreen(),
    riwayat(),
    Profil(),
  ];

  final List<BottomNavigationBarItem> _bottomItem = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Home",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.history),
      label: "Riwayat",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: "Profil",
    ),
  ];

  int currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme: IconThemeData(color: Colors.black38),
        currentIndex: currentIndex,
        items: _bottomItem,
        onTap: onTabTapped,
      ),
    );
  }
}
