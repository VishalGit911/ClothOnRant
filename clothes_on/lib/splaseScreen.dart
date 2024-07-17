import 'dart:async';

import 'package:flutter/material.dart';

import 'bottomBar.dart';

class SplaceScreen extends StatefulWidget {
  const SplaceScreen({Key? key}) : super(key: key);

  @override
  State<SplaceScreen> createState() => _SplaceScreenState();
}

class _SplaceScreenState extends State<SplaceScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
          () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ColothesBotomBarScreen(),
            ));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: CircleAvatar(
            radius: 130,
            backgroundImage: NetworkImage(
                "https://play-lh.googleusercontent.com/Mlsrc7Z0oSVzWlkCiOi-m5NdFSojJupNYchgw5GDCeVTufSjRcGi85PAd4QJei521ws"),
          ),
        ));
  }
}
