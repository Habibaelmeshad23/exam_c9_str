import 'package:carousel_slider/carousel_slider.dart';
import 'package:exam/tabs/first_tab.dart';
import 'package:exam/tabs/second_tab.dart';
import 'package:exam/tabs/third_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

import 'container.dart';


class HomePage extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index=0;
  final items =[
    Image.asset("assets/images/Frame 24.png"),
    Image.asset("assets/images/Frame 24.png"),
    Image.asset("assets/images/Frame 24.png"),
  ];
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         bottomNavigationBar: BottomNavigationBar(
           type: BottomNavigationBarType.shifting,
           selectedItemColor: Color(0xff027A48),
           unselectedItemColor: Color(0xFF667085),
           currentIndex: index,
             onTap: (value){
             index=value;
             setState(() {
             });
             },
             items: [
               BottomNavigationBarItem(
                   icon: ImageIcon(AssetImage("assets/images/home-05.png")),
                 label: "home"
               ),
               BottomNavigationBarItem(
                 icon: ImageIcon(AssetImage("assets/images/grid-01.png")),
                   label: "home"
               ),
               BottomNavigationBarItem(
                 icon: ImageIcon(AssetImage("assets/images/calendar.png")),
                   label: "home"
               ),
               BottomNavigationBarItem(
                 icon: ImageIcon(AssetImage("assets/images/user-03.png")),
                   label: "home"
               ),
             ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, FirstTab.routeName);
                    },
                      child: Image.asset("assets/images/logo.png")),
                  SizedBox(width: 5,),
                  Text("Moody",
                  style: TextStyle(fontSize: 24,),),
                  Spacer(),
                  badges.Badge(
                      position: badges.BadgePosition.topEnd(top: -1,end: -1),
                      child: Icon(Icons.notifications,))
                ],
              ),
              SizedBox(height: 15,),

              Row(
                children: [
                  Text("Hello,",
                      style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.w400)),
                  Text("Sara Rose",
                      style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.w600,)
                  ),
                ],
              ),
              SizedBox(height: 25,),
              Row(
                children: [
                  Text("How are you feeling today ?",
                      style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.w400
                      ))
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/Frame 14.png"),
                  Image.asset("assets/images/Frame 15.png"),
                  Image.asset("assets/images/Frame 16.png"),
                  Image.asset("assets/images/Frame 18.png"),
                  Image.asset("assets/images/Frame 19.png"),
                ],
              ),
              SizedBox(height: 25,),

              Row(
                children: [
                  Text("Feature",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                  ),),
                  Spacer(),
                  Row(
                    children: [
                      Text("See more",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          color: Color(0xFF027A48)
                        ),),
                      Icon(Icons.arrow_forward_ios_rounded,
                          color: Color(0xFF027A48))
                    ],)
                ],
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 100,
                child: CarouselSlider(
                  options: CarouselOptions(
                    onPageChanged:(index,reason){
                      setState(() {
                        currentIndex=index;
                      });
                    } ,
                    height: 200,
                    aspectRatio: 16/9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    //autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    //onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                  ),
                  items:items,

                ),
              ),
              SizedBox(height: 20,),

              Row(
                children: [
                  Text("Exercise",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                    ),),
                  Spacer(),
                  Row(
                    children: [
                      Text("See more",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF027A48)
                        ),),
                      Icon(Icons.arrow_forward_ios_rounded,
                          color: Color(0xFF027A48))
                    ],)
                ],
              ),
              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      ContainerData("Relax","assets/images/relax.png",
                      Color(0xFFF9F5FF)),
                      SizedBox(height: 5,),
                      ContainerData("Beathing","assets/images/beath.png",
                          Color(0xFFFFFAF5)),
                    ],
                  ),
                  Column(
                    children: [
                      ContainerData("Meditation","assets/images/medi.png",
                          Color(0xFFFDF2FA)),
                      SizedBox(height: 5,),
                      ContainerData("Yoga","assets/images/yoga.png",
                          Color(0xFFF0F9FF)),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),


        );
  }
}
