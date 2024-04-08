import 'package:flutter/material.dart';
import 'package:pet_skor/animal_info/Rabbit/all_rabits.dart';
import 'package:pet_skor/animal_info/Rabbit/rabbit_info.dart';
import 'package:provider/provider.dart';

class Rabbits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final rabbitData = Provider.of<RabbitInfos>(context);
    final rabbit = rabbitData.info;
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, i) => ChangeNotifierProvider.value(
              value: rabbit[i],
              child: AllRabbits(
                name: rabbit[i].name,
                img: rabbit[i].img,
                price: rabbit[i].price,
              ),
            ));
  }
}
