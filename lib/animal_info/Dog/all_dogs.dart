import 'package:flutter/material.dart';
import 'package:pet_skor/animal_info/Dog/dog_info.dart';
import 'package:pet_skor/animal_info/Dog/dog_detail.dart';
import 'package:provider/provider.dart';

class AllDogs extends StatelessWidget {
  final String name;
  final String img;
  final String price;

  AllDogs({
    this.name,
    this.img,
    this.price,
  });
  @override
  Widget build(BuildContext context) {
    final dog = Provider.of<DogInfo>(context);
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(DetailDog.routeName, arguments: dog.id);
      },
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        color: Colors.redAccent,
        elevation: 10.0,
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 30.0),
                child: Image(
                  image: AssetImage(img),
                  height: 420,
                  width: 500,
                ),
              ),
              Row(
                children: [
                  Container(
                    margin:
                        EdgeInsets.only(left: 30.0, top: 460.0, bottom: 8.0),
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
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(left: 130.0, top: 460.0, bottom: 8.0),
                    height: 45.0,
                    width: 160.0,
                    child: Text(
                      price,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
