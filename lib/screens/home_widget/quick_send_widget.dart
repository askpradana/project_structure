import 'package:flutter/material.dart';

class QuickReSend extends StatelessWidget {
  final List _avatar = [
    "https://images.pexels.com/photos/416160/pexels-photo-416160.jpeg?cs=srgb&dl=pexels-pixabay-416160.jpg&fm=jpg",
    "https://images.pexels.com/photos/57416/cat-sweet-kitty-animals-57416.jpeg?cs=srgb&dl=pexels-pixabay-57416.jpg&fm=jpg",
    "https://images.pexels.com/photos/9413/animal-cute-kitten-cat.jpg?cs=srgb&dl=pexels-skitterphoto-9413.jpg&fm=jpg",
    "https://images.pexels.com/photos/617278/pexels-photo-617278.jpeg?cs=srgb&dl=pexels-kelvin-valerio-617278.jpg&fm=jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Send Again"), Icon(Icons.more_horiz)],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _quickSendAgain(0, "Jean"),
              _quickSendAgain(1, "Connie"),
              _quickSendAgain(2, "Evan"),
              _quickSendAgain(3, "Lulu"),
            ],
          )
        ],
      ),
    );
  }

  //To build column cat with name
  _quickSendAgain(int yangMana, String nama) {
    return Column(
      children: [_circleAvatar(yangMana), Text(nama)],
    );
  }

  //To call cat image using network image
  _circleAvatar(int index) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(_avatar[index]), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(8))),
    );
  }
}