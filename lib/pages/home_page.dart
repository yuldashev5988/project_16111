import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:iconly/iconly.dart';
import 'package:project_16/screens/home_screen.dart';
import 'package:project_16/screens/message_screen.dart';
import 'package:project_16/screens/profile_screen.dart';
import 'package:project_16/screens/search_screen.dart';
import 'package:project_16/screens/shop_screen.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController pageController;
  int selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          body: PageView(
            controller: pageController,
            children:  [
              HomeScreen(),
              MessageScreen(),
              SearchScreen(),
              ShopScreen(),
              ProfileScreen(),
            ],
            onPageChanged: (int index) {
              setState(
                    () {
                  selectedIndex = index;
                },
              );
            },
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (int index) {
              setState(
                    () {
                  selectedIndex = index;
                  pageController.animateToPage(index,
                      duration: const Duration(
                        microseconds: 200,
                      ),
                      curve: Curves.bounceOut);
                },
              );
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(IconlyBold.home,),
                label: "Home".tr(),
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(IconlyBold.message,),
                label: "Messages".tr(),
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(IconlyLight.search,),
                label: "Search".tr(),
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(IconlyLight.buy,),
                label: "Cart".tr(),
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  color: Colors.grey,
                ),
                label: "Profile".tr(),
                backgroundColor: Colors.white,
              ),
            ],
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.grey,
          ),
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_close,
          animatedIconTheme: IconThemeData(size: 22),
          overlayColor: Colors.black,
          overlayOpacity: 0.5,
          onOpen: () => print("Speed dial opened"),
          onClose: () => print("Speed dial closed"),
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          shape: const CircleBorder(),
          children: [
            SpeedDialChild(
              child: GestureDetector(
                onTap: (){
                  context.setLocale(Locale("en","US"));
                },
                  child: const Text("US").tr()),
              backgroundColor: Colors.white,
              labelStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              onTap: () => print("First pressed"),
            ),
            SpeedDialChild(
              child: GestureDetector(
                onTap: (){
                  context.setLocale(Locale("ru","RU"));
                },
                child: Text(
                  "RU",
                ).tr(),
              ),
              backgroundColor: Colors.white,
              labelStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              onTap: () => print("Second  pressed"),
            ),
            SpeedDialChild(
              child: GestureDetector(
                onTap: (){context.setLocale(Locale("uz","UZ"));},
                  child: Text("UZ").tr(),),
              backgroundColor: Colors.white,
              labelStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              onTap: () => print("Third pressed"),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      ),
    );
  }
}
