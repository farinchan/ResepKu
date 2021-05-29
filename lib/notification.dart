import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Notifikasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "notifikasi",
        theme: ThemeData(
          primaryColor: HexColor("#ffffff"),
          accentColor: HexColor("#ffffff"),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          body: SafeArea(
              child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: HexColor("#F12B7E"),
                            size: 35,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.notifications,
                        color: HexColor("#F12B7E"),
                        size: 35,
                      ),
                    ),
                    Text(
                      "Notifikasi",
                      style: TextStyle(
                          color: HexColor("#F12B7E"),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 300,
                      child: Text(
                        "Kamu tidak memiliki notifikasi",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: HexColor("#F12B7E")),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
        ));
  }
}
