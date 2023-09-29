import 'package:exam/homa_page.dart';
import 'package:exam/tabs/first_tab.dart';
import 'package:exam/tabs/second_tab.dart';
import 'package:exam/tabs/third_tab.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      initialRoute:HomePage.routeName ,
      routes:{
       HomePage.routeName:(context)=>HomePage(),
        FirstTab.routeName:(context)=>FirstTab(),
        SecondTab.routeName:(context)=>SecondTab(),
        ThirdTab.routeName:(context)=>ThirdTab(),


      } ,
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
