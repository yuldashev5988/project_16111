import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:project_16/pages/drawer_page.dart';
import 'package:project_16/pages/notification_page.dart';
import 'package:project_16/views/electronicsView.dart';
import 'package:project_16/views/furnitureView.dart';
import 'package:project_16/views/phonesView.dart';
import 'package:project_16/views/watchesView.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../views/infoScreens/manInfoScreen.dart';
import '../views/laptopView.dart';
import '../views/menView.dart';
import '../widgets/likeWidget.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "home_screen";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<HomeScreen> {
  late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, NotificationPage.id);
            },
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
        ],
        title:  Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.sunny,
                  color: Colors.white,
                ),
                Text(
                  "SHOPPIR",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Express Shopping".tr(),
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child:  TextField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          hintText: "Search".tr(),
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.qr_code_scanner,
                      color: Colors.orange,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20), //
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Container(
                height: 220,
                width: MediaQuery.of(context).size.width,
                child: PageView(
                  controller: _pageController,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/banner.webp",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/banner.webp",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/banner.webp",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/banner.webp",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SmoothPageIndicator(
                      controller: _pageController,
                      count: 4,
                      effect: WormEffect(
                          dotHeight: 14,
                          dotWidth: 14,
                          type: WormType.thinUnderground),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
            Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories".tr(),
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "See All".tr(),
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                )
              ],
            ),
          ),
          const   SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){Navigator.pushReplacementNamed(context, MenView.id);},
                    child: Container(
                      height: 72,
                      width: 72,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200.withOpacity(0.5),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            height: 40,
                            width: 40,
                            child:const  Image(
                              image: AssetImage("assets/images/man_image.png"),
                            ),
                          ),
                             Text(
                            "Man".tr(),
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 72,
                    width: 72,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200.withOpacity(0.5),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 40,
                          width: 40,
                          child: Image(
                            image: AssetImage("assets/images/woman_dress.png"),
                          ),
                        ),
                        Text(
                          "Woman".tr(),
                          maxLines: 1,
                          style: TextStyle(fontSize: 15,overflow: TextOverflow.ellipsis),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 72,
                    width: 72,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200.withOpacity(0.5),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 40,
                          width: 40,
                          child: Image(
                            image: AssetImage("assets/images/shoes.png"),
                          ),
                        ),
                        Text(
                          "Shoes".tr(),
                          maxLines: 1,

                          style: TextStyle(fontSize: 15,overflow: TextOverflow.ellipsis),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 72,
                    width: 72,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200.withOpacity(0.5),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 40,
                          width: 40,
                          child: Image(
                            image: AssetImage("assets/images/toys.png"),
                          ),
                        ),
                        Text(
                          "Toys".tr(),
                          maxLines: 1,

                          style: TextStyle(fontSize: 15,overflow: TextOverflow.ellipsis),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 72,
                    width: 72,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200.withOpacity(0.5),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 40,
                          width: 40,
                          child: Image(
                            image: AssetImage("assets/images/caps.png"),
                          ),
                        ),
                        Text(
                          "Caps".tr(),
                          maxLines: 1,

                          style: TextStyle(fontSize: 15,overflow: TextOverflow.ellipsis),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, ElectronicsView.id);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 72,
                      width: 72,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200.withOpacity(0.5),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            height: 40,
                            width: 40,
                            child:const  Image(
                              image: AssetImage("assets/images/electronics.png"),
                              fit: BoxFit.cover,

                            ),
                          ),
                           Text(
                            "Electronics".tr(),
                            maxLines: 1,
                            style: TextStyle(fontSize: 12,overflow: TextOverflow.ellipsis),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, FurnitureView.id);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 72,
                      width: 72,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200.withOpacity(0.5),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            height: 40,
                            width: 40,
                            child:const  Image(
                              image: AssetImage("assets/images/furniture.png"),
                              fit: BoxFit.cover,

                            ),
                          ),
                            Text(
                            "Furniture".tr(),
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, PhonesView.id);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 72,
                      width: 72,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200.withOpacity(0.5),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            height: 40,
                            width: 40,
                            child:const  Image(
                              image: AssetImage("assets/images/phones.png"),
                              fit: BoxFit.cover,

                            ),
                          ),
                           Text(

                            "Phones".tr(),
                            maxLines: 1,
                            style: TextStyle(fontSize: 15,overflow: TextOverflow.ellipsis),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, LaptopView.id);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 72,
                      width: 72,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200.withOpacity(0.5),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            height: 40,
                            width: 40,
                            child:const  Image(
                              image: AssetImage("assets/images/laptop.png"),
                              fit: BoxFit.cover,

                            ),
                          ),
                            Text(
                            "Laptop".tr(),
                            maxLines: 1,
                            style: TextStyle(fontSize: 15,overflow: TextOverflow.ellipsis),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, WatchesView.id);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 72,
                      width: 72,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200.withOpacity(0.5),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            height: 40,
                            width: 40,
                            child: const Image(
                              image: AssetImage("assets/images/watches.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                           Text(
                            "Watches".tr(),
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text(
                  "Most Popular".tr(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child:  Text(
                    "See all".tr(),
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:
            Row(
              children: [
                LikeWidget(imageUrl: "assets/images/shoes.png", imageUrl2: "assets/images/toys.png"),
                LikeWidget(imageUrl: "assets/images/shoes.png", imageUrl2: "assets/images/toys.png"),

              ],
            ),


          )

        ],
      ),
    );
  }
}
