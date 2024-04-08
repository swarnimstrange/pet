import 'package:flutter/material.dart';
import 'package:pet_skor/animal_info/Dog/all_dogs.dart';
import 'package:pet_skor/animal_info/Dog/dog_info.dart';
import 'package:provider/provider.dart';

class Doggs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dogData = Provider.of<DogInfos>(context);
    final dog = dogData.info;
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, i) => ChangeNotifierProvider.value(
              value: dog[i],
              child: AllDogs(
                name: dog[i].name,
                img: dog[i].img,
                price: dog[i].price,
              ),
            ));
  }
}
