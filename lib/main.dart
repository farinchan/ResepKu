import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:resepku/detail_screen.dart';
import 'package:resepku/all_food.dart';
import 'package:resepku/models/resep.dart';
import 'package:resepku/notification.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resepku',
      theme: ThemeData(
          primaryColor: HexColor("#F12B7E"),
          accentColor: HexColor("#F12B7E"),
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("#F12B7E"),
        appBar: AppBar(
          elevation: 0,
          title: Text("ResepKu"),
          centerTitle: false,
          actions: [
            IconButton(
                icon: Icon(
                  Icons.notifications_active,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Notifikasi();
                  }));
                }),
            IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
                onPressed: () {})
          ],
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Text(
                "apa yang ingin kamu masak hari ini",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 29,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "search",
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    )),
                onChanged: (String value) {},
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                "Rekomendasi buat kamu:",
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 18),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(left: 15),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ListFood();
                    }));
                  },
                  child: Text(
                    "See All",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
                  height: 600,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                ),

                //Listview Content
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (buildContext, int index) {
                    final ResepList resep = resepList[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailScreen(resep: resep);
                        }));
                      },
                      child: Container(
                        height: 200,
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
                        padding: EdgeInsets.all(8),
                        child: Stack(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        colorFilter: ColorFilter.mode(
                                            Colors.black.withOpacity(0.5),
                                            BlendMode.luminosity),
                                        image: AssetImage(resep.image)))),
                            Container(
                              margin: EdgeInsets.fromLTRB(20, 10, 0, 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    resep.title,
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.9),
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: 3,
                ),
              ],
            ),
          ],
        ));
  }
}
