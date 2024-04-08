import 'dart:ui';

import 'package:flutter/material.dart';

class SettingsTab extends StatefulWidget {
  @override
  _SettingsTabState createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  displayDialogBox(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("About"),
            content: Text(
              "Pet Kors is the perfect place to buy and sell pets locally! No need to visit the flea market to find the best breed, here you’ll find a wide selection of pets.\nEasy Login.\nAdd Your Favorite Animal into your Wishlist.\nSearch pets\nEasy Online or Cash Payment\nLooking to sell your pet or want to buy pet? Or just on the lookout for great deals? Then Pet Kors is the app for you! With Pet Kors you can sell any pet with ease and in no time. You can also discover what others around you are selling in your neighborhood.",
              style: TextStyle(fontSize: 20.0),
            ),
            actions: [
              MaterialButton(
                child: Text("Okay"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          padding: EdgeInsets.zero,
          children: [
            Card(
              child: ListTile(
                title: Text("Change Theme"),
                subtitle: Text("Light Theme <=> Dark Theme "),
                trailing: Switch(value: true, onChanged: (val) {}),
                dense: true,
              ),
            ),
            Card(
              child: ListTile(
                title: Text("About"),
                trailing: IconButton(
                  icon: Icon(Icons.perm_device_information_rounded),
                  onPressed: () => displayDialogBox(context),
                ),
                onTap: () {},
                dense: true,
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Account Info"),
                onTap: () {},
                dense: true,
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Notifications"),
                onTap: () {},
                dense: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
