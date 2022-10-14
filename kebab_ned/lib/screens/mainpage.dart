import 'package:flutter/material.dart';
import 'package:kebab_ned/screens/menu_home/home.dart';

class MyMainPage extends StatefulWidget {
  MyMainPage({Key? key}) : super(key: key);

  @override
  State<MyMainPage> createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {
  final List<Widget> _children = [
     HomeScreen(),
  ];

  final List<BottomNavigationBarItem> _bottomItem = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Home",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.add),
      label: "Add Product",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: "Profile",
    ),
  ];

  int currentIndex = 0;
  
  void onTabTapped(int index) {
    setState(() {currentIndex = index;});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:_children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme:  IconThemeData(color: Colors.black38),
        currentIndex: currentIndex,
        items: _bottomItem, 
        onTap: onTabTapped,
      ),
    );
  }
}