import 'package:flutter/material.dart';

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