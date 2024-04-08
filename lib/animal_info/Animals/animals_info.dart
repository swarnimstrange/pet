import 'package:flutter/foundation.dart';

class AnimalInfo with ChangeNotifier {
  final String id;
  final String name;
  final String img;
  final String price;
  final String description;
  final double cost;

  AnimalInfo({
    @required this.id,
    @required this.name,
    @required this.img,
    @required this.price,
    @required this.description,
    @required this.cost,
  });
}

class AnimalInfos with ChangeNotifier {
  List<AnimalInfo> _info = [
    AnimalInfo(
      id: "23",
      name: "Jersey Calf",
      img: "assets/cow.jpg",
      price: "10,000/-Rs ",
      description:
          'The Jersey breed is the second largest breed of dairy cattle in the world.'
          'The Jersey adapts well to various climates and environments,'
          ' and unlike many breeds originating in temperate climates, these cows can tolerate heat very well.',
      cost: 10000,
    ),
    AnimalInfo(
      id: "24",
      name: "Guinea Pig",
      img: "assets/guinia_pig.jpg",
      price: "1,200/-Rs ",
      description:
          'Guinea Pig resembles other cavies in having a robust body with short limbs, large head and eyes, and short ears.'
          'The feet have hairless soles and short sharp claws. There are four toes on the forefeet and three on the hind feet.'
          'Several breeds of domesticated guinea pigs exist, which are sometimes grouped by coat texture and hair length. ',
      cost: 1200,
    ),
    AnimalInfo(
      id: "25",
      name: " Hamster ",
      img: "assets/hamster.jpg",
      price: "500/-Rs ",
      description:
          'Hamsters are typically stout-bodied, with tails shorter than body length, and have small, furry ears, short, stocky legs, and wide feet.'
          ' The hamster tail can be difficult to see, as it is usually not very long '
          'Hamsters are omnivores which means they can eat meat and vegetables. Hamsters that live in the wild eat seeds, grass, and even insects.',
      cost: 500,
    ),
    AnimalInfo(
      id: "26",
      name: "Turtle",
      img: "assets/turtle.jpg",
      price: "400/-Rs ",
      description: 'Experience: Beginner'
          'Size: They grow about 8 to 12 inches (20-30 cm) long'
          'Lifespan: Turtles live as long as 15 to 25 years'
          'Habitat: Turtles live in semi-aquatic environments'
          'Make a home from aquarium gravel to create a sloped area above the water level or you can utilize a landing dock.',
      cost: 400,
    ),
    AnimalInfo(
      id: "27",
      name: "Sheep",
      img: "assets/sheep.jpg",
      price: "11,000/-Rs ",
      description:
          '''Sheep, species of domesticated ruminant (cud-chewing) mammal, raised for its meat, milk, and wool.
          Sheep usually have short tails. In all wild species of sheep, the outer coat takes the form of hair, and beneath this lies a short undercoat of fine wool that has been developed into the fleece of domesticated sheep.
          Mature sheep weigh from about 35 to as much as 180 kg (80 to 400 pounds).''',
      cost: 11000,
    ),
  ];

  List<AnimalInfo> get info {
    return [..._info];
  }

  AnimalInfo findById(String id) {
    return _info.firstWhere((animal) => animal.id == id);
  }
}
