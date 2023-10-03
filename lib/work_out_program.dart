import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorkOut extends StatelessWidget {
  String txt1;
  String txt2;
  String txt3;
  String txt4;
  String img;
WorkOut(this.txt1,this.txt2,this.txt3,this.txt4,this.img);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:Color(0xffE4E7EC),
            borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1,color:Colors.grey)

      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Container(
                 height: 25,
                 width: 55,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(15),
                   border: Border.all(width: 1,color:Colors.grey)
                 ),
                   child: Center(child: Text(txt1))),
                SizedBox(height: 6,),
                Text(txt2,
                style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold),),
                SizedBox(height: 6,),
                Text(txt3,),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Icon(Icons.access_time),
                    SizedBox(width: 5,),
                    Text(txt4),
                  ],
                ),
              ],
            ),
            Image.asset(img)
          ],
        ),
      ),
    );
  }
}
