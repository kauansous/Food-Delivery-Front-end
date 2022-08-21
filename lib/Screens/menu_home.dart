// ignore_for_file: unused_field, must_be_immutable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/menu_favorite.dart';
import 'package:food_delivery/Screens/menu_notification.dart';
import 'package:food_delivery/Screens/myprofile.dart';
import 'package:food_delivery/Screens/screen_menu_home.dart';

class MenuHomeApp extends StatefulWidget {
  const MenuHomeApp({Key? key}) : super(key: key);

  @override
  State<MenuHomeApp> createState() => _MenuHomeAppState();
}

class _MenuHomeAppState extends State<MenuHomeApp> {
  int opcaoselecionada = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: opcaoselecionada,
        children: <Widget>[
          const ScreenMenuHome(),
          const MenuFavoriteApp(),
          const MenuNotification(),
          const MyProfileApp(),
        ],
      ),
      extendBody: true,
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFFDC27A),
        onPressed: () {},
        child: const Icon(
          Icons.shop,
          color: Color(0xFF104E5B),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(7),
        child: BottomAppBar(
          notchMargin: -10,
          shape: const CircularNotchedRectangle(),
          color: Colors.white,
          child: IconTheme(
            data: const IconThemeData(color: Colors.grey),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        opcaoselecionada = 0;                     
                      });
                    },
                    icon: const Icon(
                      Icons.home,
                      color: Color(0xFFFDC27A),
                    )),
                IconButton(
                    onPressed: () {
                      setState(() {
                        opcaoselecionada = 1;                     
                      });
                    },
                    icon: const Icon(Icons.book)),
                const SizedBox(width: 24),
                IconButton(onPressed: () {
                  setState(() {
                    opcaoselecionada = 2;                     
                  });
                }, icon: const Icon(Icons.doorbell)),
                IconButton(
                onPressed: () {
                  setState(() {
                    opcaoselecionada = 3;                     
                  });
                }, icon: const Icon(Icons.account_box)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
