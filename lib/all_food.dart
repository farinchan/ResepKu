import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:resepku/detail_screen.dart';
import 'package:resepku/models/resep.dart';

class ListFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: HexColor("#F12B7E")),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text("Rekomendasi Buat Anda"),
        ),
        body: ListView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemBuilder: (buildContext, int index) {
            final ResepList resep = resepList[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
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
          itemCount: resepList.length,
        ),
      ),
    );
  }
}
