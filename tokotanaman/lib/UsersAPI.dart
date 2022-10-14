import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:toko_tanaman_polaris/constants.dart';

class ApiUser extends StatefulWidget {
  ApiUser({Key? key}) : super(key: key);

  @override
  State<ApiUser> createState() => _ApiUserState();
}

class _ApiUserState extends State<ApiUser> {
  List<dynamic> _users = [];
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Pembeli"),
        backgroundColor: kButtonColor,
      ),
      body: _users.isNotEmpty
          ? ListView.builder(itemBuilder: (context, index) {
              return Card(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.network(_users[index]['image']),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _users[index]['firstName'],
                          ),
                          Text(
                            _users[index]['email'],
                          ),
                          Text(
                            _users[index]['phone'],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            })
          : Container(
              child: Center(
                child: _loading
                    ? CircularProgressIndicator()
                    : ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.white, primary: kButtonColor),
                        child: Text("Lihat Data User"),
                        onPressed: getUserData,
                      ),
              ),
            ),
    );

    //Center(
    //     child: ElevatedButton(
    //   child: Text("Lihat Data"),
    //   onPressed: () {
    //     getUserData();
    //   },
    // )),
  }

  void getUserData() async {
    setState(() {
      _loading = true;
    });
    var respons = await http.get(Uri.https('dummyjson.com', 'users'));
    if (respons.statusCode == 200) {
      var jsonData = jsonDecode(respons.body);
      setState(() {
        _users = jsonData['users'];
        _loading = false;
      });
    }
  }
}
