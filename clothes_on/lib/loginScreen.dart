import 'package:clothes_on/signinScreen.dart';
import 'package:flutter/material.dart';

import 'bottomBar.dart';
import 'forgate.dart';

class ClothesLoginScreen extends StatefulWidget {
  const ClothesLoginScreen({Key? key}) : super(key: key);

  @override
  State<ClothesLoginScreen> createState() => _ClothesLoginScreenState();
}

class _ClothesLoginScreenState extends State<ClothesLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Color(0XFF154360),
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ColothesBotomBarScreen(),
                ));
          },
          child: Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0XeftO7RjnDIsDuD4eZmPJRi13elDYHCqs7ZY1XlDkZ-M28jCkCBLUPHzv6KZgnXAK1Y&usqp=CAU"),
                height: 150,
              ),
              Text(
                "Login to your Account",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF34495E)),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Your Email",
                      helperStyle: TextStyle(fontSize: 17),
                      icon: Icon(
                        Icons.mail,
                        color: Color(0XFF34495E),
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Your Password",
                      helperStyle: TextStyle(fontSize: 17),
                      icon: Icon(
                        Icons.lock,
                        color: Color(0XFF34495E),
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ColothesBotomBarScreen(),
                      ));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0XFF34495E),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ClothesForgetScreen(),
                      ));
                },
                child: Text(
                  "Forget Password",
                  style: TextStyle(
                      color: Colors.yellow.shade900,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an Account ?  ",
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ClothesSigninScreen(),
                          ));
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.yellow.shade900,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
