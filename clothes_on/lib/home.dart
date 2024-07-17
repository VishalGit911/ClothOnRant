import 'package:clothes_on/share.dart';
import 'package:flutter/material.dart';

import 'loginScreen.dart';
import 'notification.dart';

class AppBanner {
  String imageurl;

  AppBanner({required this.imageurl});
}

class ClothesHomeScreen extends StatefulWidget {
  const ClothesHomeScreen({Key? key}) : super(key: key);

  @override
  State<ClothesHomeScreen> createState() => _ClothesHomeScreenState();
}

class _ClothesHomeScreenState extends State<ClothesHomeScreen> {
  List<AppBanner> imagedata = [
    AppBanner(
        imageurl:
        "https://www.ethicalconsumer.org/sites/default/files/styles/primary_image_large/public/images/2021-11/Fast-fashion.jpg?h=a2921b4c&itok=4lb15rou"),
    AppBanner(
        imageurl:
        "https://images.hindustantimes.com/img/2021/01/22/1600x900/9a9cc5ba-5cc7-11eb-ad72-ff583b148149_1611333167143.jpg"),
    AppBanner(
        imageurl:
        "https://sundayguardianlive.com/wp-content/uploads/2018/02/Untitled-1_18.jpg"),
    AppBanner(
        imageurl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwYOOWsw3-WhUW9_Btw855Gtr-Lzht6KHUluBKPxNYOOqgFUBgtu0VOAtTotwsDcIVx4c&usqp=CAU"),
    AppBanner(
        imageurl:
        "https://blog.g3fashion.com/wp-content/uploads/2020/06/Top-Fashion-Trend-blog.jpg"),
    AppBanner(
        imageurl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRfKj_sIMyZI9LUH4HPam_TCcd1LcBgKwn8p3LOiyZS2nVYV1Nvo0WRNR5OfR_35IHJHg&usqp=CAU")
  ];
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ClothesShareScreen(),
                      ));
                },
                child: Icon(Icons.share)),
            SizedBox(
              width: 10,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ClothesNotificationScreen(),
                      ));
                },
                child: Icon(Icons.notifications)),
            SizedBox(
              width: 10,
            )
          ],
          title: Text(
            "Vishal Govindiya",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          foregroundColor: Color(0XFF154360),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ClothesLoginScreen(),
                    ));
              },
              child: CircleAvatar(
                backgroundColor: Colors.grey.shade300,
                child: Center(
                  child: Icon(Icons.person),
                ),
              ),
            ),
          )),
      backgroundColor: Colors.white,
      body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Card(
                  color: Colors.grey.shade200,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search Here..",
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    Container(
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                      ),
                      child: PageView.builder(
                        itemCount: imagedata.length,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: NetworkImage(imagedata[index].imageurl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Catagory",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF154360)),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    OutlinedButton(onPressed: () {}, child: Text("Men")),
                    SizedBox(
                      width: 15,
                    ),
                    OutlinedButton(onPressed: () {}, child: Text("Women")),
                    SizedBox(
                      width: 15,
                    ),
                    OutlinedButton(onPressed: () {}, child: Text("Kids")),
                    SizedBox(
                      width: 15,
                    ),
                    OutlinedButton(
                        onPressed: () {}, child: Text("Trending Products")),
                    SizedBox(
                      width: 15,
                    ),
                  ]),
                ),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(
                                "https://manyavar.scene7.com/is/image/manyavar/Untitled%20Session6708_08-11-2022-04-21:283x395"),
                          ),
                          Text("Kurta"),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://5.imimg.com/data5/SELLER/Default/2023/2/GW/XP/BW/1974219/ladies-designer-kurti.jpeg"),
                            radius: 40,
                          ),
                          Text("Kurti"),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://i0.wp.com/www.theunstitchd.com/wp-content/uploads/2015/12/white-shervani-for-wedding-mens.jpg?ssl=1"),
                            radius: 40,
                          ),
                          Text("Sherwani"),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJM6tdUOigQwCOTi9-v_b1KqK53hRpAWCgMqtkJ2ZTgKHnVj_jjvqzjDV9OEmD5KVeGcA&usqp=CAU"),
                            radius: 40,
                          ),
                          Text("Saree"),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://www.punjabandesigner.com/wp-content/uploads/2020/08/lehenga-buy-online-in-india.jpg"),
                            radius: 40,
                          ),
                          Text("Lehengas"),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_uokQISTnkhjbSLzKjU5Ii7nlnp55JiF7Eg&s"),
                            radius: 40,
                          ),
                          Text("Gown"),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Kurta",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF154360)),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Card(
                        elevation: 0,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Rs.1500",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0XFF154360)),
                                ),
                              ),
                              height: 330,
                              width: 230,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://shreeman.in/cdn/shop/products/Shreema4235E.jpg?v=1690976335&width=3460"),
                                      fit: BoxFit.fill)),
                            ),
                            Text(
                              "Kurta",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow.shade900),
                            ),
                            Text("Yellow Floral Printed Slik",
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 35,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade400,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text("XL"),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.grey.shade400,
                                ),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                SizedBox(
                                  width: 65,
                                ),
                                Container(
                                  height: 40,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15)),
                                      color: Color(0XFF154360)),
                                  child: Center(
                                      child: Icon(
                                        Icons.chat_bubble_outline,
                                        color: Colors.white,
                                      )),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Card(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Rs.250",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0XFF154360)),
                                ),
                              ),
                              height: 330,
                              width: 230,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://rukminim2.flixcart.com/image/850/1000/xif0q/ethnic-set/s/f/n/s-na-bang-looks-kurta-pyajama-set-bang-looks-original-imagzhh2pykbsgfg.jpeg?q=20&crop=false"),
                                      fit: BoxFit.fill)),
                            ),
                            Text(
                              "Kurta",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow.shade900),
                            ),
                            Text("Men Slim fit Solid Spread",
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 35,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text("XL"),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 35,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text("XL"),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 35,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text("XL"),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.grey.shade400,
                                ),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                SizedBox(
                                  width: 65,
                                ),
                                Container(
                                  height: 40,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15)),
                                      color: Color(0XFF154360)),
                                  child: Center(
                                      child: Icon(
                                        Icons.chat_bubble_outline,
                                        color: Colors.white,
                                      )),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Card(
                        elevation: 10,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Rs.300",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0XFF154360)),
                                ),
                              ),
                              height: 330,
                              width: 230,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://assets.panashindia.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/9/3/9309_1.jpg"),
                                      fit: BoxFit.fill)),
                            ),
                            Text(
                              "Kurta",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow.shade900),
                            ),
                            Text("Yellow Mirror Work Long",
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 35,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text("M"),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 35,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text("XL"),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.grey.shade400,
                                ),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                SizedBox(
                                  width: 65,
                                ),
                                Container(
                                  height: 40,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15)),
                                      color: Color(0XFF154360)),
                                  child: Center(
                                      child: Icon(
                                        Icons.chat_bubble_outline,
                                        color: Colors.white,
                                      )),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Card(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Rs.1000",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0XFF154360)),
                                ),
                              ),
                              height: 330,
                              width: 230,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://i.etsystatic.com/19394471/r/il/4b65b1/5324046243/il_570xN.5324046243_6kqu.jpg"),
                                      fit: BoxFit.fill)),
                            ),
                            Text(
                              "Kurta",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow.shade900),
                            ),
                            Text("Opulent Gold Slik Kurta",
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 35,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text("FREE SIZE"),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.grey.shade400,
                                ),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                SizedBox(
                                  width: 65,
                                ),
                                Container(
                                  height: 40,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15)),
                                      color: Color(0XFF154360)),
                                  child: Center(
                                      child: Icon(
                                        Icons.chat_bubble_outline,
                                        color: Colors.white,
                                      )),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Kurti",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF154360)),
                ),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Card(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Rs.500",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0XFF154360)),
                                ),
                              ),
                              height: 330,
                              width: 230,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZdTDaMhiZEEe4mRkqgf-AvICfXebfqnKL4DrbSLheetwwlSDUjauTN-duYnq_3z52Pn0&usqp=CAU"),
                                      fit: BoxFit.fill)),
                            ),
                            Text(
                              "Kurti",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow.shade900),
                            ),
                            Text("Powder Blue Silk Maxi",
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 35,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text("XL"),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 35,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text("ML"),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.grey.shade400,
                                ),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                SizedBox(
                                  width: 65,
                                ),
                                Container(
                                  height: 40,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15)),
                                      color: Color(0XFF154360)),
                                  child: Center(
                                      child: Icon(
                                        Icons.chat_bubble_outline,
                                        color: Colors.white,
                                      )),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Card(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Rs.500",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0XFF154360)),
                                ),
                              ),
                              height: 330,
                              width: 230,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://5.imimg.com/data5/SELLER/Default/2022/12/WM/SV/MD/180943635/whatsapp-image-2022-12-14-at-3-09-42-pm-500x500.jpeg"),
                                      fit: BoxFit.fill)),
                            ),
                            Text(
                              "Kurti",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow.shade900),
                            ),
                            Text("Bottle Green Printed",
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 35,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text("S"),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 35,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text("XL"),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.grey.shade400,
                                ),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                SizedBox(
                                  width: 65,
                                ),
                                Container(
                                  height: 40,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15)),
                                      color: Color(0XFF154360)),
                                  child: Center(
                                      child: Icon(
                                        Icons.chat_bubble_outline,
                                        color: Colors.white,
                                      )),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Card(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Rs.200",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0XFF154360)),
                                ),
                              ),
                              height: 330,
                              width: 230,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://rukminim2.flixcart.com/image/850/1000/kve530w0/ethnic-set/p/w/s/m-sv-011-black-ojariya-original-imag8b55wjfysghx.jpeg?q=90&crop=false"),
                                      fit: BoxFit.fill)),
                            ),
                            Text(
                              "Kurti",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow.shade900),
                            ),
                            Text("Black Kurti Set In Slik",
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 35,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text("FREE SIZE"),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.grey.shade400,
                                ),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                SizedBox(
                                  width: 65,
                                ),
                                Container(
                                  height: 40,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15)),
                                      color: Color(0XFF154360)),
                                  child: Center(
                                      child: Icon(
                                        Icons.chat_bubble_outline,
                                        color: Colors.white,
                                      )),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Card(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Rs.350",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0XFF154360)),
                                ),
                              ),
                              height: 330,
                              width: 230,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://img3.junaroad.com/uiproducts/20039037/std_300_1-1689176263.jpg"),
                                      fit: BoxFit.fill)),
                            ),
                            Text(
                              "Kurti",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow.shade900),
                            ),
                            Text("Pink Pant Set In Cotton",
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 35,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text("S"),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 35,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text("M"),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 35,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text("L"),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.grey.shade400,
                                ),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                SizedBox(
                                  width: 65,
                                ),
                                Container(
                                  height: 40,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15)),
                                      color: Color(0XFF154360)),
                                  child: Center(
                                      child: Icon(
                                        Icons.chat_bubble_outline,
                                        color: Colors.white,
                                      )),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Saree",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF154360)),
                ),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Card(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Rs.1300",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0XFF154360)),
                                ),
                              ),
                              height: 330,
                              width: 230,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://assets.ajio.com/medias/sys_master/root/20220526/RzMr/628e9ff6aeb26921afd9facc/-473Wx593H-464388914-green-MODEL.jpg"),
                                      fit: BoxFit.fill)),
                            ),
                            Text(
                              "Saree",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow.shade900),
                            ),
                            Text("Brownle Color Ready",
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 35,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text("FREE SIZE"),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.grey.shade400,
                                ),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                SizedBox(
                                  width: 65,
                                ),
                                Container(
                                  height: 40,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15)),
                                      color: Color(0XFF154360)),
                                  child: Center(
                                      child: Icon(
                                        Icons.chat_bubble_outline,
                                        color: Colors.white,
                                      )),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Card(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Rs.1000",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0XFF154360)),
                                ),
                              ),
                              height: 330,
                              width: 230,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2wEcTZTdup4DCrRpssukEFJmvzUK1Hctjb4tgH9Rm1JzMZXvC62y1m2q6rGk7giMH2Dc&usqp=CAU"),
                                      fit: BoxFit.fill)),
                            ),
                            Text(
                              "Saree",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow.shade900),
                            ),
                            Text("Peacock Rama Saree",
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 35,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text("S"),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.grey.shade400,
                                ),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                SizedBox(
                                  width: 65,
                                ),
                                Container(
                                  height: 40,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15)),
                                      color: Color(0XFF154360)),
                                  child: Center(
                                      child: Icon(
                                        Icons.chat_bubble_outline,
                                        color: Colors.white,
                                      )),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Lehengas",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF154360)),
                ),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Card(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Rs.300",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0XFF154360)),
                                ),
                              ),
                              height: 330,
                              width: 230,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://empress-clothing.com/cdn/shop/collections/AZ-1009C.jpg?v=1687597340"),
                                      fit: BoxFit.fill)),
                            ),
                            Text(
                              "Lehengas",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow.shade900),
                            ),
                            Text("Navratri Choli",
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 35,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text("S"),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 35,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text("XL"),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.grey.shade400,
                                ),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                SizedBox(
                                  width: 65,
                                ),
                                Container(
                                  height: 40,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15)),
                                      color: Color(0XFF154360)),
                                  child: Center(
                                      child: Icon(
                                        Icons.chat_bubble_outline,
                                        color: Colors.white,
                                      )),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Card(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Rs.500",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0XFF154360)),
                                ),
                              ),
                              height: 330,
                              width: 230,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVAXlnIhirkGfcJM_cqOVPa5ANbszepSWZAKmV1FpHZpun5FjXxhMnIltCAHCwYTiACpE&usqp=CAU"),
                                      fit: BoxFit.fill)),
                            ),
                            Text(
                              "Lehengas",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow.shade900),
                            ),
                            Text("Chaniya Choli",
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 35,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text("XL"),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.grey.shade400,
                                ),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                SizedBox(
                                  width: 65,
                                ),
                                Container(
                                  height: 40,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15)),
                                      color: Color(0XFF154360)),
                                  child: Center(
                                      child: Icon(
                                        Icons.chat_bubble_outline,
                                        color: Colors.white,
                                      )),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Card(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Rs.500",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0XFF154360)),
                                ),
                              ),
                              height: 330,
                              width: 230,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://mehakboutique.com/cdn/shop/files/bridal-lehenga-1076_6b9b23e3-66cc-46c0-8ea9-41bc14845a9a_1024x1024@2x.jpg?v=1712489374"),
                                      fit: BoxFit.fill)),
                            ),
                            Text(
                              "Lehengas",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow.shade900),
                            ),
                            Text("White Lehenga",
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 35,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text("M"),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 35,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text("L"),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.grey.shade400,
                                ),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                SizedBox(
                                  width: 65,
                                ),
                                Container(
                                  height: 40,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15)),
                                      color: Color(0XFF154360)),
                                  child: Center(
                                      child: Icon(
                                        Icons.chat_bubble_outline,
                                        color: Colors.white,
                                      )),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Card(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Rs.1500",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0XFF154360)),
                                ),
                              ),
                              height: 330,
                              width: 230,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://static3.azafashions.com/tr:w-450/uploads/product_gallery/jreu-w007-0221205001649767823.jpg"),
                                      fit: BoxFit.fill)),
                            ),
                            Text(
                              "Lehengas",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow.shade900),
                            ),
                            Text("Bride And Baraat",
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 35,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text("FREE SIZE"),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.grey.shade400,
                                ),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                Icon(Icons.star, color: Colors.grey.shade400),
                                SizedBox(
                                  width: 65,
                                ),
                                Container(
                                  height: 40,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15)),
                                      color: Color(0XFF154360)),
                                  child: Center(
                                      child: Icon(
                                        Icons.chat_bubble_outline,
                                        color: Colors.white,
                                      )),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
