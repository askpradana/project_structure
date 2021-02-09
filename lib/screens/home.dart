import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_structure/screens/settings.dart';
import 'package:project_structure/screens/home_widget/appbar_widget.dart';
import 'package:project_structure/screens/home_widget/account_balance.dart';
import 'package:project_structure/screens/home_widget/main_menu_widget.dart';
import 'package:project_structure/screens/home_widget/berita_widget.dart';
import 'package:project_structure/screens/home_widget/quick_send_widget.dart';
import 'package:project_structure/screens/home_widget/recent_activity_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController _page = PageController(initialPage: 0);

  @override
  void dispose() {
    _page.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final jarakHorizontal = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarDefault(
          leftIcon: Icons.settings,
          onPressedLeft: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Settings()));
          },
        ),
      ),
      body: PageView(
        controller: _page,
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: jarakHorizontal * 0.05),
            children: [
              InfoAccountBalance(),
              MainMenu(),
              QuickReSend(),
              RecentActivity(),
              Berita(),
              TradeMark()
            ],
          ),
          Center(
            child: Text("Page 2"),
          ),
          Center(
            child: Text("Page 3"),
          ),
        ],
      ),
      //bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}

class TradeMark extends StatelessWidget {
  const TradeMark({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 10),
      child: Text("Developed by Pradana"),
    );
  }
}

class CustomBottomAppBar extends StatefulWidget {
  @override
  _CustomBottomAppBarState createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _iconButton(Icons.home_filled),
          _iconButton(Icons.account_balance_wallet_outlined),
          _iconButton(Icons.graphic_eq),
          _iconButton(Icons.settings),
        ],
      ),
    );
  }

  IconButton _iconButton(IconData ikon) {
    return IconButton(
      icon: Icon(ikon),
      onPressed: () {},
    );
  }
}
