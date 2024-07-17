import 'package:clothes_on/home.dart';
import 'package:clothes_on/profileScreen.dart';
import 'package:flutter/material.dart';

import 'cartScreen.dart';
import 'chatScreen.dart';

class ColothesBotomBarScreen extends StatefulWidget {
  const ColothesBotomBarScreen({Key? key}) : super(key: key);

  @override
  State<ColothesBotomBarScreen> createState() => _ColothesBotomBarScreenState();
}

class _ColothesBotomBarScreenState extends State<ColothesBotomBarScreen> {
  List screen = [
    ClothesHomeScreen(),
    ClothesCartScreen(),
    ClothesChatScreen(),
    ClothesProfileScreen()
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          selectedItemColor: Colors.amber.shade900,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Trending"),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble), label: "Chat"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
          ]),
    );
  }
}
