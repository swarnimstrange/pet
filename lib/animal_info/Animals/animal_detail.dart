import 'package:flutter/material.dart';
import 'package:pet_skor/animal_info/Animals/animals_info.dart';
import 'package:pet_skor/cart/wishlist_info.dart';
import 'package:provider/provider.dart';

class DetailAnimal extends StatelessWidget {
  static const routeName = '/animal-detail';

  @override
  Widget build(BuildContext context) {
    final aniId = ModalRoute.of(context).settings.arguments as String;
    final loadedani = Provider.of<AnimalInfos>(context).findById(aniId);
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedani.name),
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(15.0),
              child: Text(
                loadedani.name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                ),
              ),
              child: Image(
                alignment: Alignment.center,
                image: AssetImage(loadedani.img),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.all(15.0),
              child: Text(
                "Price-: ${loadedani.price} ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 15, left: 15, right: 15),
              child: Text(
                loadedani.description,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 28.0,
                ),
                softWrap: true,
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 45.0,
                    width: 200.0,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        "Buy Now",
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () => Null,
                      color: Colors.pinkAccent,
                    ),
                  ),
                  Container(
                    height: 45.0,
                    width: 200.0,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        "Chat Now",
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () => Null,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  Container(
                    height: 45.0,
                    width: 200.0,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        "Add To Wishlist",
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        cart.addItem(aniId, loadedani.name, loadedani.img,
                            loadedani.price);
                      },
                      color: Colors.tealAccent,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
