import 'package:flutter/material.dart';

import '../views/infoScreens/furnitureInfoScreen.dart';
class FurnitureCard extends StatefulWidget {
  String imagePath;
  String text;
  double price;
  double realPrice;
  int discount;
  double rating;
  double views;
  FurnitureCard({required this.imagePath,
    required this.text,
    required this.price,
    required this.realPrice,
    required this.discount,
    required this.rating,
    required this.views,super.key});

  @override
  State<FurnitureCard> createState() => _FurnitureCardState();
}

class _FurnitureCardState extends State<FurnitureCard> {
  bool favorite1 = false;

  onPress() {
    setState(() {
      favorite1 = !favorite1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>FurnitureInfoScreen(imagePath: widget.imagePath),),);
      },
      child: Column(
        children: [
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.imagePath),
              ),
            ),
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {
                onPress();
              },
              icon: favorite1
                  ? Icon(
                Icons.favorite,
                color: Colors.red,
              )
                  : Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(widget.text),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Row(
              children: [
                Text("\$${widget.price}"),
                Text("(\$${widget.realPrice}) -${widget.discount}% "),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 18),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow.shade800,
                  size: 12,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow.shade800,
                  size: 12,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow.shade800,
                  size: 12,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow.shade800,
                  size: 12,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow.shade800,
                  size: 12,
                ),
                SizedBox(
                  width: 3.8,
                ),
                Text("${widget.rating}"),
                SizedBox(
                  width: 8,
                ),
                Text("(${widget.views}k)")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
/* Widget _furniture(
      {}) {
    return
  }
*/
