import 'dart:js';

import 'package:flutter/material.dart';
import 'package:pet_skor/cart/wishlist_info.dart';
import 'package:pet_skor/cart/wishlist_item.dart';
import 'package:provider/provider.dart';

class Wishlist extends StatelessWidget {
  static const routeName = '/wishlist-detail';
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("My Wishlist"),
          backgroundColor: Colors.lightGreen,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cart.items.length,
                itemBuilder: (context, i) => WishlistItem(
                    id: cart.items.values.toList()[i].id,
                    aid: cart.items.keys.toList()[i],
                    name: cart.items.values.toList()[i].name,
                    img: cart.items.values.toList()[i].img,
                    price: cart.items.values.toList()[i].price),
              ),
            ),
          ],
        ));
  }
}
