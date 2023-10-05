import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Imgs extends StatelessWidget {
String img;
String text1;
String text2;
Imgs(this.img,this.text1,this.text2);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.cover)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(

            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              color: Color(0xffFEF0C7)
            ),
              child: Text(text1,style: TextStyle(
                color: Color(0xff93370D)
              ),)),
          SizedBox(height: 10,),
          Text(text2,style: TextStyle(fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white),)
        ],
      ));

  }
}
