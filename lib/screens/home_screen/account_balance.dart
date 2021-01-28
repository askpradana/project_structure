import 'package:flutter/material.dart';

class InfoAccountBalance extends StatefulWidget {

  final String balanceTitle = "Your Balance";
  final String balanceTotal = "\$8000";

  @override
  _InfoAccountBalanceState createState() => _InfoAccountBalanceState();
}

class _InfoAccountBalanceState extends State<InfoAccountBalance> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(color: Colors.transparent),
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: ListTile(
        title: Text(widget.balanceTitle,
          style: TextStyle(color: Colors.white),
        ),
        subtitle: Text(widget.balanceTotal,
          style: TextStyle(color: Colors.white),
        ),
        trailing: IconButton(
          icon: Container(
            color: Colors.white,
            child: Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
