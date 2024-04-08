import 'package:flutter/material.dart';
import 'package:pet_skor/animal_info/Animals/animals_info.dart';
import 'package:pet_skor/animal_info/Cat/cat_info.dart';
import 'package:pet_skor/animal_info/Dog/dog_info.dart';
import 'package:pet_skor/animal_info/Rabbit/rabbit_detail.dart';
import 'package:pet_skor/animal_info/Rabbit/rabbit_info.dart';
import 'package:pet_skor/cart/wishlist_info.dart';
import 'package:pet_skor/screens/Homepage.dart';
import 'package:pet_skor/screens/wishlist.dart';
import 'package:provider/provider.dart';
import 'animal_info/Animals/animal_detail.dart';
import 'animal_info/Cat/cat_detail.dart';
import 'animal_info/Dog/dog_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: DogInfos(),
        ),
        ChangeNotifierProvider.value(
          value: CatInfos(),
        ),
        ChangeNotifierProvider.value(
          value: RabbitInfos(),
        ),
        ChangeNotifierProvider.value(
          value: AnimalInfos(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
      ],
      child: MaterialApp(
        title: 'Pet Skor',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DefaultTabController(
          length: 4,
          child: HomePage(),
        ),
        routes: {
          DetailDog.routeName: (context) => DetailDog(),
          DetailCat.routeName: (context) => DetailCat(),
          DetailRabbit.routeName: (context) => DetailRabbit(),
          DetailAnimal.routeName: (context) => DetailAnimal(),
          Wishlist.routeName: (context) => Wishlist(),
        },
      ),
    );
  }
}
