import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

import '../carousel_slider.dart';

class SecondTab extends StatefulWidget {
  static const String routeName = "secondTab";

  @override
  State<SecondTab> createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {
  final img = [
    Image.asset("assets/images/Frame_.png"),
    Image.asset("assets/images/Frame_2.png"),
  ];
  int index = 0;
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
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
                  icon: ImageIcon(AssetImage("assets/images/calendar.png")),
                  label: "Today"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/grid-01.png")),
                  label: "Insights"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/message.png")),
                  label: "Chat"),
            ]),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(35),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/Frame.png"),
                    Text(
                      "AliceCare",
                      style: TextStyle(fontSize: 24),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.search),
                    hintText: "Articles, Video, Audio and More,...",
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: TabBar(
                      labelColor: Color(0xff6941C6),
                      unselectedLabelColor: Colors.black,
                      indicator: ShapeDecoration(
                          color: Color(0xffF4EBFF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      tabs: [
                        Tab(
                          text: "Discover",
                        ),
                        Tab(
                          text: "News",
                        ),
                        Tab(
                          text: "Most Viewed",
                        ),
                        Tab(
                          text: "Saved",
                        ),
                      ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Hot topics",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    Text(
                      "See more",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF027A48)),
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,
                        color: Color(0xFF027A48))
                  ],
                ),
                SizedBox(height: 20,),

                CarouselSlider(
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    height: 150,
                    aspectRatio: 2.0,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    //onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: [
                    Imgs("assets/images/Frame_.png", "self-care",
                        "10 Easy Self-Care Ideas That Can \n Help Boost Your Health"),

                    Imgs("assets/images/Frame_2.png","CYCLE",
                        "How to take care of Menstrual \n Hygiene during Menstrual Cycle")
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text(
                      "Get Tips",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Color(0xffE4E7EC),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: 1, color: Colors.grey)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset("assets/images/Doctor-.png"),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Connect with doctors & \n get suggestions",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 6,),
                          Text(
                            "Connect now and get \n expert insights ",
                          ),
                          SizedBox(height: 14,),
                          Container(
                              height: 28,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Color(0xff7F56D9),
                                  borderRadius: BorderRadius.circular(8),
                                  border:
                                      Border.all(width: 1, color: Colors.grey)),
                              child: Center(child: Text("View detail",style:
                                TextStyle(color: Colors.white
                                ),))),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14,),
                Row(
                  children: [
                    Text(
                      "Cycle Phases and Period",
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    Text(
                      "See more",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF027A48)),
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,
                        color: Color(0xFF027A48))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
