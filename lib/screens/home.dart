import 'package:flutter/material.dart';
import 'package:project_structure/screens/home_widget/appbar_widget.dart';
import 'package:project_structure/screens/home_widget/account_balance.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final jarakHorizontal = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(100), child: AppBarDefault()),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: jarakHorizontal * 0.05),
        children: [InfoAccountBalance(), MainMenu(), QuickReSend()],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.home_filled), 
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.monetization_on), 
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.graphic_eq), 
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.settings), 
              onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
}

class QuickReSend extends StatelessWidget {
  List _avatar = [
    "https://images.pexels.com/photos/416160/pexels-photo-416160.jpeg?cs=srgb&dl=pexels-pixabay-416160.jpg&fm=jpg",
    "https://images.pexels.com/photos/57416/cat-sweet-kitty-animals-57416.jpeg?cs=srgb&dl=pexels-pixabay-57416.jpg&fm=jpg",
    "https://images.pexels.com/photos/9413/animal-cute-kitten-cat.jpg?cs=srgb&dl=pexels-skitterphoto-9413.jpg&fm=jpg",
    "https://images.pexels.com/photos/617278/pexels-photo-617278.jpeg?cs=srgb&dl=pexels-kelvin-valerio-617278.jpg&fm=jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
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

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: IconButton(
                  icon: Icon(Icons.shopping_basket, color: Colors.blueAccent),
                  onPressed: () {},
                ),
              ),
              Text("Shop")
            ],
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: IconButton(
                  icon: Icon(Icons.credit_card, color: Colors.pink),
                  onPressed: () {},
                ),
              ),
              Text("Buy")
            ],
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: IconButton(
                  icon: Icon(Icons.redeem, color: Colors.orange),
                  onPressed: () {},
                ),
              ),
              Text("Discount")
            ],
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: IconButton(
                  icon: Icon(Icons.expand_more, color: Colors.purple),
                  onPressed: () {},
                ),
              ),
              Text("More")
            ],
          ),
        ],
      ),
    );
  }
}
