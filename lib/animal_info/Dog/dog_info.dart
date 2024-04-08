import 'package:flutter/foundation.dart';

class DogInfo with ChangeNotifier {
  final String id;
  final String name;
  final String img;
  final String price;
  final String description;
  final double cost;

  DogInfo({
    @required this.id,
    @required this.name,
    @required this.img,
    @required this.price,
    @required this.description,
    @required this.cost,
  });
}

class DogInfos with ChangeNotifier {
  List<DogInfo> _info = [
    DogInfo(
      id: "1",
      name: "Beagle",
      img: "assets/beagle.jpg",
      price: "7,000/-Rs ",
      description:
          'Beagles are happy, outgoing and loving. They are often described as having a merry temperament,'
          'but they are also known for their mischievous nature. Beagles like to have their own way,'
          'and they can be naughty,determined and stubborn in their efforts to get what they want, which is usually food.',
      cost: 7000,
    ),
    DogInfo(
      id: "2",
      name: "Golden Retriver",
      img: "assets/senior-golden.jpg",
      price: "14,000/-Rs ",
      description:
          'The Golden Retriever is one of the most friendly, tolerant dog breeds'
          'they are great family pets, and their intelligence makes them highly capable working dogs.'
          'Golden Retrievers excel at retrieving game for hunters, tracking, sniffing out contraband for law enforcement, and as therapy and service dogs',
      cost: 14000,
    ),
    DogInfo(
      id: "3",
      name: "Pit-Bull",
      img: "assets/VAMPVAMP.jpg",
      price: "10,000/-Rs ",
      description: 'Pit Bull is a companion and family dog breed.'
          ' the breed evolved into all-around farm dogs, and later moved into the house to become “nanny dogs” because they were so gentle around children.'
          'Even though these are purebred dogs, you may find them in the care of shelters or rescue groups.',
      cost: 10000,
    ),
    DogInfo(
      id: "4",
      name: "Indian Spitz",
      img: "assets/Indian_Spitz.jpg",
      price: "4,000/-Rs ",
      description:
          'The Indian Spitz is a spitz-type dog breed belonging to the utility group.'
          'The Indian Spitz was one of the most popular dogs in India in the 1980s'
          'The Indian Spitz is a high-spirited, intelligent and playful dog, which is alert, vocal and obedient.',
      cost: 4000,
    ),
    DogInfo(
      id: "5",
      name: "Toy Poodle",
      img: "assets/Toy-Poodle.jpg",
      price: "20,000/-Rs ",
      description:
          'Elegant. Proud. Clever. The Poodle is an impressive dog, as the many best-in-show winners from this dog breed can attest.'
          'But behind the blue ribbons, impressive hairdos, and regal attitude, you’ll find an affectionate family dog with an ancient history and many talents.'
          'Even though these are purebred dogs, you may find them in the care of shelters or rescue groups',
      cost: 20000,
    ),
    DogInfo(
      id: "6",
      name: "German Shepherd",
      img: "assets/German_Shephard.jpg",
      price: "9,000/-Rs ",
      description: 'The German Shepherd Dog is one of most popular dog breeds. '
          'They’re intelligent and capable working dogs. Their devotion and courage are unmatched. And they’re amazingly versatile.'
          'The breed also goes by the name Alsatian. Despite their purebred status, you may find German Shepherds in shelters and breed specific rescues.',
      cost: 9000,
    ),
    DogInfo(
      id: "7",
      name: "Pug",
      img: "assets/pug.jpg",
      price: "8,000/-Rs ",
      description:
          'The Pug is often described as a lot of dog in a small space.'
          'they are known as the clowns of the canine world because they have a great sense of humor and like to show off.'
          'Pugs thrive on human companionship. They’re highly sensitive, and though they can make for great apartment pets.',
      cost: 8000,
    ),
  ];

  List<DogInfo> get info {
    return [..._info];
  }

  DogInfo findById(String id) {
    return _info.firstWhere((dog) => dog.id == id);
  }
}
