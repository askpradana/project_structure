import 'package:flutter/material.dart';
import 'package:project_structure/screens/home_screen/appbar_widget.dart';
import 'package:project_structure/screens/home_screen/account_balance.dart';

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
          preferredSize: Size.fromHeight(100),
          child: AppBarDefault()),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: jarakHorizontal * 0.05),
          children: [
            InfoAccountBalance(),
            MainMenu()
          ],
        ));
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
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: IconButton(
                  icon: Icon(Icons.shopping_basket, color: Colors.blueAccent), 
                  onPressed: (){},
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
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: IconButton(
                  icon: Icon(Icons.credit_card, color: Colors.pink), 
                  onPressed: (){},
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
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: IconButton(
                  icon: Icon(Icons.redeem, color: Colors.orange), 
                  onPressed: (){},
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
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: IconButton(
                  icon: Icon(Icons.expand_more, color: Colors.purple), 
                  onPressed: (){},
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