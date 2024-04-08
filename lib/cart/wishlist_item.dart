import 'package:flutter/material.dart';
import 'package:pet_skor/cart/wishlist_info.dart';
import 'package:provider/provider.dart';

class WishlistItem extends StatelessWidget {
  final String id;
  final String aid;
  final String name;
  final String img;
  final String price;

  WishlistItem({
    @required this.id,
    @required this.aid,
    @required this.name,
    @required this.img,
    @required this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      color: Colors.white70,
      elevation: 10,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.28,
                maxHeight: MediaQuery.of(context).size.width * 0.28,
              ),
              child: Image.asset(img, fit: BoxFit.fill),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                  child: Text(
                    price,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 40, 0, 0),
                child: IconButton(
                    icon: Icon(
                      Icons.delete,
                      size: 40,
                    ),
                    onPressed: () {
                      Provider.of<Cart>(context).removeItem(aid);
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
