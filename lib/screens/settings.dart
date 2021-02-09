import 'package:flutter/material.dart';
import 'package:project_structure/screens/home_widget/appbar_widget.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarDefault(
            leftIcon: Icons.arrow_back,
            onPressedLeft: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Column(
              children: [
                _judulJenis("profile"),
                _setingsProfile(Icons.person, "Personal Information"),
                _setingsProfile(Icons.credit_card, "Payment"),
                _setingsProfile(Icons.message, "Message Board"),
              ],
            ),
            Column(
              children: [
                _judulJenis("Bank Account"),
                _setingsProfile(Icons.shop, "Google Payment"),
                _setingsProfile(Icons.attach_money, "Credit Information"),
                _setingsProfile(Icons.verified, "Verification"),
              ],
            )
          ],
        ));
  }

  Row _judulJenis(String judul) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(judul), Icon(Icons.more_horiz)],
      );
  }

  ListTile _setingsProfile(IconData ikon, String judul) {
    return ListTile(
      leading: Icon(ikon),
      title: Text(judul),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}
