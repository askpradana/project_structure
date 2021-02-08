import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
          preferredSize: Size.fromHeight(50), child: AppBarDefault()),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: jarakHorizontal * 0.05),
        children: [
          InfoAccountBalance(),
          MainMenu(),
          QuickReSend(),
          RecentActivity(),
          Berita(),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 10),
            child: Text("Developed by Pradana"),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.home_filled),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.monetization_on),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.graphic_eq),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

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
            _isiBerita(0, "Laptop Mahal"),
            _isiBerita(1, "Jaman Dulu"),
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

class RecentActivity extends StatelessWidget {
  const RecentActivity({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Recent Activity"),
            Icon(Icons.chevron_right)
          ],
        ),
        _recentActivity("Dian", "7 Jan 2020", "\$ 770", Icons.favorite, Colors.red),
        _recentActivity("Fira", "24 Dec 2019", "\$ 10", Icons.send, Colors.blue),
        _recentActivity("Lex", "23 Dec 2019", "\$ 90", Icons.account_balance_wallet, Colors.orange),
      ],
    );
  }

  ListTile _recentActivity(String nama, String tanggal, String duit, IconData icon, Color warna) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(8),
        color: Colors.grey[300],
        child: Icon(icon, color: warna)),
      title: Text(nama),
      subtitle: Text(tanggal),
      trailing: Text(duit),
    );
  }
}

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
