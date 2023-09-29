import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FirstTab extends StatefulWidget {
  static const String routeName="firstTab";

  @override
  State<FirstTab> createState() => _FirstTabState();
}
class _FirstTabState extends State<FirstTab> {
  final items =[
    Image.asset("assets/images/1.JPG"),
    Image.asset("assets/images/2.JPG"),
    Image.asset("assets/images/3.JPG"),

  ];

  int currentIndex=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
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
          ],
        ),
      ),
    );
  }
}
