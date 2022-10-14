import 'package:flutter/material.dart';
import 'package:toko_tanaman_polaris/UsersAPI.dart';
import 'package:toko_tanaman_polaris/constants.dart';
import 'package:get/get.dart';
import 'package:toko_tanaman_polaris/screens/menu_home/home.dart';

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          children: <Widget>[
            Container(
                decoration: const BoxDecoration(
                  color: kBackgroundColor,
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const CircleAvatar(
                          backgroundImage: AssetImage("assets/images/daun.png"),
                          radius: 50.0,
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const Text(
                          "Toko Tanaman Polaris",
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Card(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 5.0),
                          clipBehavior: Clip.antiAlias,
                          color: Colors.white,
                          elevation: 5.0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 22.0),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    children: const <Widget>[
                                      Text(
                                        "Dibuka Sejak",
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          // color: Colors.blueAccent,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "Virtual 2020",
                                        style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: const <Widget>[
                                      Text(
                                        "Lokasi",
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          // color: Colors.blueAccent,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "Virtual",
                                        style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 5.0),
                          clipBehavior: Clip.antiAlias,
                          color: Colors.white,
                          elevation: 5.0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 22.0),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    children: const <Widget>[
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        'Toko Tanaman Polaris ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 25, fontWeight: bold
                                            // color: Colors.blueAccent,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 5.0),
                          clipBehavior: Clip.antiAlias,
                          color: Colors.white,
                          elevation: 5.0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 22.0),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(Icons.whatsapp),
                                          Icon(Icons.email),
                                          Icon(Icons.phone),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .2,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFF023609),
                                shadowColor: Colors.white),
                            onPressed: (() {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) {
                                return ApiUser();
                              }));
                            }),
                            child: Text("Lihat Daftar User"))
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ]),
    );
  }
}
