import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:project_16/pages/home_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'intro_screen.dart';

class IntroPage extends StatefulWidget {
  static const String id = "intro_page";

  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
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
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: PageView(
              controller: _pageController,
              children: [
                InroScreen(
                  myTitle: "Explore Best Products".tr(),
                  myContext: "Browse 2 mln+ products and find your desire product".tr(),
                  imagePath: 'assets/images/market1.png',
                ),
                InroScreen(
                  myTitle:"Select your product".tr() ,
                  myContext: "Lorem Ipsum is simply dummy text of the printing and typesetting industry".tr(),
                  imagePath: 'assets/images/market2.png',
                ),
                InroScreen(
                  myTitle: "Where can I get some".tr(),
                  myContext: "Lorem Ipsum has been the industry's standard dummy".tr(),
                  imagePath: 'assets/images/market1.png',
                ),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _pageController,
            count: 3,
            effect: const WormEffect(
              dotHeight: 8,
              dotWidth: 8,
              type: WormType.thinUnderground,
            ),
          ),
          Expanded(child: Container()),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, HomePage.id);
            },
            child: Padding(
              padding:  EdgeInsets.all(20),
              child: Container(
                height: 60,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),                color: Colors.orange,
                ),
                child: Center(
                  child: Text(
                    "START SHOPPING".tr(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}
