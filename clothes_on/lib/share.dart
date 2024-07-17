import 'package:flutter/material.dart';

class ClothesShareScreen extends StatefulWidget {
  const ClothesShareScreen({Key? key}) : super(key: key);

  @override
  State<ClothesShareScreen> createState() => _ClothesShareScreenState();
}

class _ClothesShareScreenState extends State<ClothesShareScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Share & Earn",
          style:
          TextStyle(color: Color(0XFF154360), fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
