import 'package:flutter/material.dart';
import 'package:pet_skor/animal_info/Animals/all_animals.dart';
import 'package:pet_skor/animal_info/Animals/animals_info.dart';
import 'package:provider/provider.dart';

class Animalss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final catData = Provider.of<AnimalInfos>(context);
    final cat = catData.info;
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, i) => ChangeNotifierProvider.value(
              value: cat[i],
              child: AllAnimals(
                name: cat[i].name,
                img: cat[i].img,
                price: cat[i].price,
              ),
            ));
  }
}
