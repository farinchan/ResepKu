import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:resepku/models/resep.dart';

class DetailScreen extends StatelessWidget {
  final ResepList resep;
  DetailScreen({required this.resep});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                    child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Image.asset(resep.image),
                    Container(
                      padding: EdgeInsets.only(top: 6),
                      margin: EdgeInsets.only(left: 100, top: 30),
                      decoration: BoxDecoration(
                          color: HexColor("#F12B7E"),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.access_time,
                                color: Colors.white,
                              ),
                              SizedBox(height: 8),
                              Text(
                                resep.waktu,
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.category,
                                color: Colors.white,
                              ),
                              SizedBox(height: 8),
                              Text(
                                resep.kategori,
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.shopping_cart,
                                color: Colors.white,
                              ),
                              SizedBox(height: 8),
                              Text(
                                resep.penyajian,
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                )),
                Container(
                    margin: EdgeInsets.only(top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FavoriteButton(),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            resep.title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'Staatliches',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    resep.description,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 16, top: 16),
                  child: Text(
                    "bahan:",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    resep.bahan,
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 16, top: 16),
                  child: Text(
                    "Pembuatan:",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    resep.pembuatan,
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 40, top: 20),
                  child: Column(
                    children: [
                      Text(
                        "Beri Nilai resep Ini",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 10),
                      Rating((rating) {})
                    ],
                  ),
                ),
              ],
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: HexColor("##F12B7E"),
                      child: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//RATING BAR
class Rating extends StatefulWidget {
  final int maxRating;
  final Function(int) onRatingSelected;
  Rating(this.onRatingSelected, [this.maxRating = 5]);
  @override
  _RatingState createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  int _currentRating = 0;

  Widget _buildRatingStar(int index) {
    if (index < _currentRating) {
      return Icon(
        Icons.star,
        color: Colors.orange,
        size: 40,
      );
    } else {
      return Icon(
        Icons.star_outline,
        size: 30,
      );
    }
  }

  Widget _buildBody() {
    final stars = List.generate(this.widget.maxRating, (index) {
      return GestureDetector(
        child: _buildRatingStar(index),
        onTap: () {
          setState(() {
            _currentRating = index + 1;
          });
        },
      );
    });

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: stars,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }
}

//FAVORITE BUTTON
class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
          size: 28,
        ),
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        });
  }
}
