import 'package:flutter/material.dart';
import 'dart:ui';

class Berita extends StatelessWidget {

  final List _gambarHeadline = [
    "https://images.pexels.com/photos/177557/pexels-photo-177557.jpeg?cs=srgb&dl=pexels-negative-space-177557.jpg&fm=jpg",
    "https://images.pexels.com/photos/4057663/pexels-photo-4057663.jpeg?cs=srgb&dl=pexels-markus-winkler-4057663.jpg&fm=jpg",
    "https://images.pexels.com/photos/2833366/pexels-photo-2833366.png?cs=srgb&dl=pexels-lt-chan-2833366.jpg&fm=jpg",
    "https://images.pexels.com/photos/220201/pexels-photo-220201.jpeg?cs=srgb&dl=pexels-pixabay-220201.jpg&fm=jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("News"),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
          children: [
            _isiBerita(0, "Laptop Terbaru"),
            _isiBerita(1, "Mesin Ketik"),
            _isiBerita(2, "Cabe Mahal"),
            _isiBerita(3, "Bumi Bulat"),
          ],
          ),
        )
      ],
    );
  }

  Card _isiBerita(int index, String headline) {
    return Card(
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(_gambarHeadline[index]),
                      fit: BoxFit.cover
                    ),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                    child: Container(
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(headline, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                )
              ],
            ),
          );
  }
}