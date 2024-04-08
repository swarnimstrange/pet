import 'package:flutter/foundation.dart';

class CatInfo with ChangeNotifier {
  final String id;
  final String name;
  final String img;
  final String price;
  final String description;
  final double cost;

  CatInfo({
    @required this.id,
    @required this.name,
    @required this.img,
    @required this.price,
    @required this.description,
    @required this.cost,
  });
}

class CatInfos with ChangeNotifier {
  List<CatInfo> _info = [
    CatInfo(
      id: "8",
      name: "American Shorthair",
      img: "assets/american_shorthair.jpg",
      price: "35,000/-Rs ",
      description:
          'The American Shorthair is a medium-sized cat, but she is a very powerful one. She is heavily muscled and has heavy boning.'
          'Her rounded, thick appearance makes you realize that she will be heavy when you pick her up.'
          'All components of this cat should be well developed. She has a broad chest, a muscular neck, strong jaws and a well-developed muzzle. Her legs are thick and strong.',
      cost: 35000,
    ),
    CatInfo(
      id: "9",
      name: "Bengal Cat",
      img: "assets/bengal.jpg",
      price: "30,000/-Rs ",
      description:
          'The Bengal could never be called delicate. They’re athletes: agile and graceful with a strong, muscular body, as befits a cat who looks as if they belong in the jungle.'
          'Despite their wild appearance, Bengal cats are actually quite affectionate with their human families.'
          'That said, they also have high energy and a fun-loving, playful side. ',
      cost: 30000,
    ),
    CatInfo(
      id: "10",
      name: "Indian Billi",
      img: "assets/indian_billi.jpg",
      price: "7,500/-Rs ",
      description:
          'Our everyday Indian billi has a long tail that is darker than its body.'
          ' Its fur is covered in grey spots. It has a sturdy build.This indigenous breed is beautiful and low maintenance in nature.'
          'Even though this is a breed mostly found stray but they are as beautiful and majestic as any other cat breed.',
      cost: 7500,
    ),
    CatInfo(
      id: "11",
      name: "Persian Cat",
      img: "assets/Persian_Cat.jpg",
      price: "17,000/-Rs ",
      description:
          'The Persian is an old breed. To those who love this elegant cat, it will come as no surprise that the longhaired beauty originated in the cradle of Persia and is now modern-day Iran.'
          'The breed’s long hair was probably the result of a natural mutation, and its striking appearance attracts people'
          'Persians are affectionate but discriminating. They reserve their attention for family members and those few guests whom they feel they can trust.',
      cost: 17000,
    ),
    CatInfo(
      id: "12",
      name: "Ragdoll",
      img: "assets/Ragdoll.jpg",
      price: "22,000/-Rs ",
      description:
          'The Ragdoll is a large, long-bodied cat. She is heavily boned with a long tail and a plush coat.'
          'The Ragdoll has a medium-sized head, but the fur makes her face appear large.'
          'The ears are also medium sized and are set on the sides of the head to continue the look of the triangular face. The legs are long and strong.',
      cost: 22000,
    ),
    CatInfo(
      id: "13",
      name: "Somali",
      img: "assets/somali.jpg",
      price: "16,000/-Rs ",
      description:
          'The Somali cat is of medium build; firm, lithe and well muscled. '
          'The head forms a medium wedge with gentle contours and the ears are set wide apart and tufted.'
          'The eyes are almond shaped, set well apart and are often amber, hazel or green in colour - the deeper the shade the better.',
      cost: 16000,
    ),
    CatInfo(
      id: "14",
      name: "Maine Coon",
      img: "assets/maine_coon.jpg",
      price: "25,000/-Rs ",
      description:
          'The Maine Coon is a native New Englander, hailing from Maine, where they were popular mousers, farm cats'
          'The first thing you’ll probably notice is that Maine Coons are big–really big!'
          'But these kitties have more going for them than size. They’re affectionate without being needy, they’re adaptable, and they’ve kept their hunting instincts, just in case you need a good mouser.',
      cost: 25000,
    ),
    CatInfo(
      id: "15",
      name: "Himalayan Cat",
      img: "assets/himalayan_cat.jpg",
      price: "13,000/-Rs ",
      description:
          'The Himalayan is usually a medium-sized cat although she is massive and heavily boned. With her masses of fur, she can appear to be rather large.'
          'The Himalayan is an extreme looking breed. The body is short but thick with thick legs and a short, thick neck.'
          'The boning is heavy but the tail is short and the ears are small.',
      cost: 13000,
    ),
  ];

  List<CatInfo> get info {
    return [..._info];
  }

  CatInfo findById(String id) {
    return _info.firstWhere((cat) => cat.id == id);
  }
}
