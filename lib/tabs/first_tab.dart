import 'package:exam/homa_page.dart';
import 'package:exam/tabs/second_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:badges/badges.dart' as badges;

import '../work_out_program.dart';


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
                icon: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, HomePage.routeName);
                  },
                    child: ImageIcon(AssetImage("assets/images/home-05.png"))),
                label: ""),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/navigation-pointer-01.png")),
                label: ""),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/bar-chart-07.png")),
                label: ""),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/user-03.png")),
                label: ""),
          ]),
        body:SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Image.asset("assets/images/Ellipse 10.png"),
                      SizedBox(width: 10,),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hello, Jade",
                              style: TextStyle(
                                  fontSize: 16
                              )),
                          SizedBox(height: 6,),
                          Text("Ready to workout?",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                              )),

                        ],
                      ),
                      Spacer(),
                      badges.Badge(
                          position: badges.BadgePosition.topEnd(top: -1,end: -1),
                          child: InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, SecondTab.routeName);
                            },
                              child: Icon(Icons.notifications,)))
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10)
                  ),
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.favorite_border,
                                  color: Color(0xff717BBC)),
                              Text("Heart Rate",
                                  style: TextStyle(
                                      fontSize: 15))
                            ],
                          ),
                          SizedBox(height: 6,),

                          Text("81 BPM",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15))
                        ],
                      ),
                      VerticalDivider(
                        thickness: 1,
                        indent: 4,
                        endIndent: 4,
                        color: Colors.grey,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.menu,
                                  color: Color(0xff717BBC)),
                              Text("To-Do",
                                  style: TextStyle(
                                      fontSize: 15))
                            ],
                          ),
                          SizedBox(height: 6,),
                          Text("32,5 %",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15))
                        ],
                      ),
                      VerticalDivider(
                        thickness: 1,
                        indent: 4,
                        endIndent: 4,
                        color: Colors.grey,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.local_fire_department_outlined,
                              color: Color(0xff717BBC),),
                              Text("Calo",
                                  style: TextStyle(
                                      fontSize: 15))
                            ],
                          ),
                          SizedBox(height: 6,),

                          Text("1000 Cal",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15))
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25,),
                Row(
                  children: [
                    Text("Workout Programs",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18))
                  ],
                ),
                Container(
                  width: double.infinity,
                  child: TabBar(
                    labelColor: Colors.black,
                      tabs: [
                    Tab(text: "All Type",),
                    Tab(text: "Full Body"),
                    Tab(text: "Upper"),
                    Tab(text: "Lower"),
                  ]),
                ),
                SizedBox(height: 15,),

                WorkOut("7 days","Morning Yoga","Improve mental focus.","30 mins",
                    "assets/images/[removal 2.png"),
                SizedBox(height: 15,),
                WorkOut("3 days","Plank Exercise","Improve posture and stability.",
                    "30 mins","assets/images/pngwing 1.png"),
                SizedBox(height: 15,),
                WorkOut("3 days","Plank Exercise","Improve posture and stability.",
                    "30 mins","assets/images/pngwing 1.png"),



              ],
            ),
          ),
        ) ,
      ),
    );
  }
}
