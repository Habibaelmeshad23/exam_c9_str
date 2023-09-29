import 'package:exam/tabs/first_tab.dart';
import 'package:exam/tabs/second_tab.dart';
import 'package:exam/tabs/third_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;


class HomePage extends StatelessWidget {
  static const String routeName = "home";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: badges.Badge(
                 badgeContent: Text("3"),
                    position: badges.BadgePosition.topEnd(top: -20,end: -10),
                    child: Icon(Icons.shopping_cart))),
                Tab(icon: Icon(Icons.person)),
              ],
            ),
            title: Text("T A B   B A R"),
          ),
          body: TabBarView(
            children: [FirstTab(), SecondTab(), ThirdTab()],
          ),
        ));
  }
}
