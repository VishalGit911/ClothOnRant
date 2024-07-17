import 'package:flutter/material.dart';

class ClothesNotificationScreen extends StatefulWidget {
  const ClothesNotificationScreen({Key? key}) : super(key: key);

  @override
  State<ClothesNotificationScreen> createState() =>
      _ClothesNotificationScreenState();
}

class _ClothesNotificationScreenState extends State<ClothesNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Notification",
          style:
          TextStyle(color: Color(0XFF154360), fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 250),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Not found",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF154360)),
            ),
          ],
        ),
      ),
    );
  }
}
