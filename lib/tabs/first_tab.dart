import 'package:exam/homa_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:badges/badges.dart' as badges;


class FirstTab extends StatefulWidget {
  static const String routeName = "firstTab";

  @override
  State<FirstTab> createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  final items = [
    Image.asset("assets/images/1.JPG"),
    Image.asset("assets/images/2.JPG"),
    Image.asset("assets/images/3.JPG"),
  ];
  int index = 0;
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            selectedItemColor: Color(0xff027A48),
            unselectedItemColor: Color(0xFF667085),
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: [
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, HomePage.routeName);
                },
                  child: ImageIcon(AssetImage("assets/images/home-05.png"))),
              label: "home"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/navigation-pointer-01.png")),
              label: "home"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/bar-chart-07.png")),
              label: "home"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/user-03.png")),
              label: "home"),
        ]),
      body:Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset("assets/images/Ellipse 10.png"),
                SizedBox(width: 10,),

                Column(
                  children: [
                    Text("Hello, Jade"),
                    Text("Ready to workout?"),

                  ],
                ),
                Spacer(),
                badges.Badge(
                    position: badges.BadgePosition.topEnd(top: -1,end: -1),
                    child: Icon(Icons.notifications,))
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.favorite_border),
                        Text("Heart Rate")
                      ],
                    ),
                    Text("81 BPM")
                  ],
                ),
                VerticalDivider(
                  color: Colors.black,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.favorite_border),
                        Text("Heart Rate")
                      ],
                    ),
                    Text("81 BPM")
                  ],
                ),
              ],
            )
          ],
        ),
      ) ,
    );
  }
}
