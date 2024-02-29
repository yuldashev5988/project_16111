import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  static const String id="drawer_page";
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
           DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Text(
              'Drawer Header'.tr(),
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            selectedColor: Colors.black,
            title: Text(
              'Profile'.tr(),
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person_outlined,
                  size: 30,
                  color: Colors.black,
                )),
          ),
          ListTile(
            selectedColor: Colors.black,
            title:Text(
              'Bookmarks'.tr(),
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_outline,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            selectedColor: Colors.black,
            title: Text(
              'Lists'.tr(),
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.list_outlined,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            selectedColor: Colors.black,
            title: Text(
              'Spaces'.tr(),
              maxLines: 1,
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.voice_chat_outlined,
                  size: 30,
                  color: Colors.black,
                )),
          ),
          ListTile(
            selectedColor: Colors.black,
            title:  Text(
              'Monetization'.tr(),
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.monetization_on_outlined,
                  size: 30,
                  color: Colors.black,
                )),
          ),
          const SizedBox(
            height: 100,
          ),
           Center(
            child: Text(
              "Settings & Support".tr(),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
