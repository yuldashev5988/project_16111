import 'package:flutter/material.dart';
class LikeWidget extends StatefulWidget {
  String imageUrl;
  String imageUrl2;
  LikeWidget({required this.imageUrl,required this.imageUrl2,super.key});

  @override
  State<LikeWidget> createState() => _LikeWidgetState();
}

class _LikeWidgetState extends State<LikeWidget> {
  bool favorite1 = false;

  onPress() {
    setState(() {
      favorite1 = !favorite1;
    });
  }
  bool favorite2 = false;

  onPress2() {
    setState(() {
      favorite2 = !favorite2;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Row(
        children: [
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.imageUrl),
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200.withOpacity(0.7),
                  // Shadow color
                  spreadRadius: 3,
                  // Spread radius
                  blurRadius: 6,
                  // Blur radius
                  offset:
                  Offset(0, 3), // Offset to control shadow position
                ),
              ],

            ),
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {
                onPress();
              },
              icon:favorite1? Icon(
                Icons.favorite,color: Colors.red,

              ):Icon(Icons.favorite_border,color: Colors.red,),),
          ),
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.imageUrl2),
              ),
              borderRadius: BorderRadius.circular(10),

              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200.withOpacity(0.7),
                  // Shadow color
                  spreadRadius: 3,
                  // Spread radius
                  blurRadius: 6,
                  // Blur radius
                  offset:
                  Offset(0, 3), // Offset to control shadow position
                ),
              ],

            ),
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {
                onPress2();
              },
              icon: favorite2? Icon(
                Icons.favorite,color: Colors.red,

              ):Icon(Icons.favorite_border_outlined,color: Colors.red,),),
          ),
        ],
      ),
    );
  }
}
