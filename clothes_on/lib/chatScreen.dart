import 'package:flutter/material.dart';

class dataMethod {
  String name;

  dataMethod({required this.name});
}

class ClothesChatScreen extends StatefulWidget {
  const ClothesChatScreen({Key? key}) : super(key: key);

  @override
  State<ClothesChatScreen> createState() => _ClothesChatScreenState();
}

class _ClothesChatScreenState extends State<ClothesChatScreen> {
  List name = [
    "Shisha Sahdev",
    "Parthiv Bhai",
    "Amit Parmar",
    "Rajesh Kheraliya",
    "Anil Govindiya",
    "Dilip bhai",
    "Ajju Bhai",
    "Sandip Kher",
    "Govindiya Yogesh",
    "Jaydip Bhai"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Chat",
            style: TextStyle(
                color: Color(0XFF154360), fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.white,
        body: ListView.builder(
          itemCount: name.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: ListTile(
                  tileColor: Colors.white,
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://static.vecteezy.com/system/resources/thumbnails/008/442/086/small_2x/illustration-of-human-icon-user-symbol-icon-modern-design-on-blank-background-free-vector.jpg"),
                  ),
                  title: Text(
                    name[index],
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0XFF154360)),
                  ),
                  trailing: Icon(
                    Icons.more_vert,
                    color: Color(0XFF154360),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
