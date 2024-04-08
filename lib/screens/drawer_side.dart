import 'package:flutter/material.dart';
import 'package:pet_skor/screens/settings.dart';
import 'package:pet_skor/screens/wishlist.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Swarnim Rai"),
            accountEmail: Text("swarnimstrange@gmail.com"),
            currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.brown,
                child: Text(
                  "S",
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                )),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.account_balance_wallet),
            title: Text("My Wallet"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.widgets_sharp),
            title: Text("Wishlist"),
            onTap: () => {Navigator.of(context).pushNamed(Wishlist.routeName)},
          ),
          ListTile(
            leading: Icon(Icons.local_convenience_store_rounded),
            title: Text("Sell a pet"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingsTab()));
            },
          ),
        ],
      ),
    );
  }
}
