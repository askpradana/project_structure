import 'package:flutter/material.dart';

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
      margin: margin,
      child: IconButton(
        icon: icon,
        color: color,
        onPressed: onPressed,
      ),
    );
  }
}

class AppBarDefault extends StatelessWidget {

  final String title = "Home";
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
        title,
        style: TextStyle(color: Colors.black),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }
}