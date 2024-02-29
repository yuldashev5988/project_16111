import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:project_16/pages/home_page.dart';
import 'package:project_16/screens/home_screen.dart';
import 'package:project_16/widgets/likeFurniture.dart';

import 'infoScreens/furnitureInfoScreen.dart';
import 'infoScreens/watchInfoScreen.dart';

class FurnitureView extends StatefulWidget {
  static const String id = "furniture_view";
String imagePath;

 FurnitureView({required this.imagePath,super.key});

  @override
  State<FurnitureView> createState() => _FurnitureViewState();
}

class _FurnitureViewState extends State<FurnitureView> {
  List imagesList = [
    "assets/images/furniture.png",
    "assets/images/caps.png",
    "assets/images/electronics.png",
    "assets/images/shoes.png",
    "assets/images/toys.png",
    "assets/images/furniture.png",
    "assets/images/caps.png",
    "assets/images/electronics.png",
    "assets/images/shoes.png",
    "assets/images/toys.png",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, HomePage.id);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.grey.shade400,
                )),
            title: Text(
              "Best Furnitures".tr(),
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
            ),
            centerTitle: true,
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return FurnitureCard(
                    imagePath: imagesList[index],
                    text: "Furniture model is \n#EuroLux".tr(),
                    price: 489,
                    realPrice: 700,
                    discount: 43,
                    rating: 4.3,
                    views: 56.8);
              },
              childCount: imagesList.length,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 5,
              childAspectRatio: 0.8,
            ),

          ),
        ],
      ),
    );
  }
}
/* margin: EdgeInsets.only(left: 8, right: 8),
                  color: Colors.white,
                  child: _furniture(
                      imagePath: "assets/images/furniture.png",
                      text: ,
                      price: 489,
                      realPrice: 700,
                      discount: 43,
                      rating: 4.3,
                      views: 56.8,),
                */
