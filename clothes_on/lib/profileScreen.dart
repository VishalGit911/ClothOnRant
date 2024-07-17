import 'dart:io';

import 'package:flutter/material.dart';

class ClothesProfileScreen extends StatefulWidget {
  const ClothesProfileScreen({Key? key}) : super(key: key);

  @override
  State<ClothesProfileScreen> createState() => _ClothesProfileScreenState();
}

class _ClothesProfileScreenState extends State<ClothesProfileScreen> {
  List listName = [
    "Coind Details",
    "Manage Products",
    "Change Password",
    "Refer & Earn",
    "Contact US",
    "Delete Your Account"
  ];
  List<Icon> iconlist = [
    Icon(Icons.confirmation_num),
    Icon(Icons.shopping_cart),
    Icon(Icons.lock),
    Icon(Icons.card_giftcard),
    Icon(Icons.call),
    Icon(Icons.delete)
  ];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Profile",
          style:
          TextStyle(color: Color(0XFF154360), fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0XFF154360),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(
                            "https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=0&k=20&c=yBeyba0hUkh14_jgv1OKqIH0CCSWU_4ckRkAoy2p73o="),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Vishal Govindiya",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "govindiyavishal@gmail.com",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "97141531**",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          )
                        ],
                      )
                    ],
                  )),
              SizedBox(
                height: 30,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: listName.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 0,
                    color: Colors.white,
                    child: ListTile(
                      leading: iconlist[index],
                      title: Text(
                        listName[index].toString(),
                        style: TextStyle(
                            color: Color(0XFF154360),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(
                        Icons.arrow_circle_right_outlined,
                        color: Colors.yellow.shade900,
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      exit(0);
                    },
                    child: Text(
                      "LOG OUT",
                      style: TextStyle(
                          color: Colors.yellow.shade900,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ]),
          )),
    );
  }
}
/*
 Card(
                elevation: 0,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.details,
                    color: Color(0XFF154360),
                  ),
                  title: Text(
                    "Coin Details",
                    style: TextStyle(
                        color: Color(0XFF154360),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.yellow.shade900,
                  ),
                ),
              ),
              Card(
                elevation: 0,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.shopping_cart,
                    color: Color(0XFF154360),
                  ),
                  title: Text(
                    "Manage Products",
                    style: TextStyle(
                        color: Color(0XFF154360),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.yellow.shade900,
                  ),
                ),
              ),
              Card(
                elevation: 0,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.lock,
                    color: Color(0XFF154360),
                  ),
                  title: Text(
                    "Change Password",
                    style: TextStyle(
                        color: Color(0XFF154360),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.yellow.shade900,
                  ),
                ),
              ),
              Card(
                elevation: 0,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.gif_outlined,
                    color: Color(0XFF154360),
                  ),
                  title: Text(
                    "Refer & Earn",
                    style: TextStyle(
                        color: Color(0XFF154360),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.yellow.shade900,
                  ),
                ),
              ),
              Card(
                elevation: 0,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.call,
                    color: Color(0XFF154360),
                  ),
                  title: Text(
                    "Contact US",
                    style: TextStyle(
                        color: Color(0XFF154360),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.yellow.shade900,
                  ),
                ),
              ),
              Card(
                elevation: 0,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.delete,
                    color: Color(0XFF154360),
                  ),
                  title: Text(
                    "Delet Your Account",
                    style: TextStyle(
                        color: Color(0XFF154360),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.yellow.shade900,
                  ),
                ),
              ),
 */
