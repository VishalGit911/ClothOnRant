import 'package:flutter/material.dart';

class ClothesCartScreen extends StatefulWidget {
  const ClothesCartScreen({Key? key}) : super(key: key);

  @override
  State<ClothesCartScreen> createState() => _ClothesCartScreenState();
}

class _ClothesCartScreenState extends State<ClothesCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Trending Product",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0XFF154360),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("SORRY, THIS PRODUCT IS CURRENTLY EMPTY !",
                  style: TextStyle(
                      color: Color(
                        0XFF154360,
                      ),
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ));
  }
}
