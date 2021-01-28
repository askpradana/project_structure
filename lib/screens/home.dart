import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final String title = "Home";
  final String balanceTitle = "Your Balance";
  final String balanceTotal = "\$8000";
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final jarakHorizontal = MediaQuery.of(context).size.width;
    final jarakVertikal = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          leading: AppBarIcon(
            icon: Icon(Icons.pie_chart),
            color: Colors.black,
            margin: EdgeInsets.all(4),
            padding: EdgeInsets.all(4),
            onPressed: () {},
          ),
          actions: [
            AppBarIcon(
              icon: Icon(Icons.notifications),
              color: Colors.black,
              margin: EdgeInsets.all(4),
              padding: EdgeInsets.all(4),
              onPressed: () {},
            )
          ],
          title: Text(
            widget.title,
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: jarakHorizontal * 0.05),
          children: [
            Container(
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
            ),
          ],
        ));
  }
}

class AppBarIcon extends StatelessWidget {
  const AppBarIcon(
      {Key key,
      this.icon,
      this.margin,
      this.padding,
      this.onPressed,
      this.color})
      : super(key: key);

  final Widget icon;
  final EdgeInsetsGeometry margin, padding;
  final Function onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration:
          BoxDecoration(border: Border.all(width: 1, color: Colors.black)),
      margin: margin,
      child: IconButton(
        icon: icon,
        color: color,
        onPressed: onPressed,
      ),
    );
  }
}
