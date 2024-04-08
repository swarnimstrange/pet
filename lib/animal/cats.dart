import 'package:flutter/material.dart';
import 'package:pet_skor/animal_info/Cat/all_cats.dart';
import 'package:pet_skor/animal_info/Cat/cat_info.dart';
import 'package:provider/provider.dart';

class Catss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final catData = Provider.of<CatInfos>(context);
    final cat = catData.info;
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, i) => ChangeNotifierProvider.value(
              value: cat[i],
              child: AllCats(
                name: cat[i].name,
                img: cat[i].img,
                price: cat[i].price,
              ),
            ));
  }
}
