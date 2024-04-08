import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:pet_skor/animal/animals.dart';
import 'package:pet_skor/animal/cats.dart';
import 'package:pet_skor/animal/dogs.dart';
import 'package:pet_skor/animal/rabbits.dart';
import 'package:pet_skor/screens/drawer_side.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pet - Buy and Sell "),
        backgroundColor: Colors.lightGreen,
        bottom: TabBar(
          tabs: [
            Tab(
                child: Image(
                  image: AssetImage("assets/dog_icon.jpg"),
                  fit: BoxFit.contain,
                ),
                text: "Dogs"),
            Tab(
                child: Image(
                  image: AssetImage("assets/cat_icon.jpg"),
                  fit: BoxFit.contain,
                ),
                text: "Cats"),
            Tab(
                child: Image(
                  image: AssetImage("assets/rabbit_icon.jpg"),
                  fit: BoxFit.contain,
                ),
                text: "Rabbits"),
            Tab(
                child: Image(
                  image: AssetImage("assets/animal_icon.jpg"),
                  fit: BoxFit.contain,
                ),
                text: "Others"),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_outlined),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      drawer: SideDrawer(),
      body: TabBarView(
        children: [
          Doggs(),
          Catss(),
          Rabbits(),
          Animalss(),
        ],
      ),
    );
  }
}
