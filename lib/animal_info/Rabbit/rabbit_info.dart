import 'package:flutter/foundation.dart';

class RabbitInfo with ChangeNotifier {
  final String id;
  final String name;
  final String img;
  final String price;
  final String description;
  final double cost;

  RabbitInfo({
    @required this.id,
    @required this.name,
    @required this.img,
    @required this.price,
    @required this.description,
    @required this.cost,
  });
}

class RabbitInfos with ChangeNotifier {
  List<RabbitInfo> _info = [
    RabbitInfo(
      id: "16",
      name: "American Rabbit",
      img: "assets/american_rabbit.jpg",
      price: "3,000/-Rs ",
      description:
          'The American rabbit has a semi-arch body type, which means the top line of the body (when viewing them from the side) doesn’t immediately rise behind the ears but flattens and curves upward at the midsection. '
          'Their ears are rather narrow, proportional in length and tapered. They can weigh anywhere from 9-11 lbs.'
          'once fully grown, so they are a medium to large sized rabbit.',
      cost: 3000,
    ),
    RabbitInfo(
      id: "17",
      name: "Domestic Indian Rabbit",
      img: "assets/domestic_rabbit.jpg",
      price: "1,000/-Rs ",
      description: 'This is one of the popular pet rabbit breeds in India.'
          'It had three varieties ie White, Black and Red.'
          'Adult buck and doe weighs 3.7 – 4.0 kg and 4.0 - 4.2 kg respectively.',
      cost: 1000,
    ),
    RabbitInfo(
      id: "18",
      name: "Himalayan Rabbit",
      img: "assets/himalayan_rabbit.jpg",
      price: "2,500/-Rs ",
      description:
          'Originated in East and found in great number in China and Russia. It is a small fancy rabbit.'
          ' It has two varieties, Albino with extremities black and blue.'
          ' Adult buck and doe weigh 1.1 – 1.6 kg and 1.5 – 2.0 kg respectively.',
      cost: 2500,
    ),
    RabbitInfo(
      id: "19",
      name: "Holland Lop",
      img: "assets/holland_lop.jpg",
      price: "3,700/-Rs ",
      description:
          'With a 14-year lifespan, weighing only four pounds, and irresistible floppy ears, this dwarf bunny is the ultimate pet for city dwellers.'
          'If you can spare the space, assign a specific room to your Holland Lop where they can happily sunbath, hop around, and keep their toys.',
      cost: 3700,
    ),
    RabbitInfo(
      id: "20",
      name: "Netherland Rabbit",
      img: "assets/netherland_rabbit.jpg",
      price: "4,000/-Rs ",
      description:
          'This particular rabbit needs more time to adjust being around humans.'
          'Through patience and love, owners soon see their true personality bloom '
          'though small children aren\'t advised to take care of them.',
      cost: 4000,
    ),
    RabbitInfo(
      id: "21",
      name: "Mini Rex",
      img: "assets/mini_rex.jpg",
      price: "5,000/-Rs ",
      description: 'This is most valuable fur producing breed. '
          'It has seven varieties ie Black, Blue, Tan, Chocolate, Orange, Gray, Pale gray.'
          'Adult buck and doe weighs 3.2 and 3.6 kg respectively.',
      cost: 5000,
    ),
    RabbitInfo(
      id: "22",
      name: "Satin",
      img: "assets/satin.jpg",
      price: "4,000/-Rs ",
      description: 'The Satin originated in the USA. It is meat breed.'
          ' It has six varieties ie Black, Blue, Chocolate, Copper, Red Siamese and White.'
          'Adult buck and doe weighs 3.5 - 4.0 kg and 4.0 – 4.5 kg respectively.',
      cost: 4000,
    ),
  ];

  List<RabbitInfo> get info {
    return [..._info];
  }

  RabbitInfo findById(String id) {
    return _info.firstWhere((rabbit) => rabbit.id == id);
  }
}
