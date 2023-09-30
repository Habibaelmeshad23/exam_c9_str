import 'package:flutter/cupertino.dart';

class ContainerData extends StatelessWidget {
  String text;
  Color color;
  String image;
  ContainerData(this.text,this.image,this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 151,
      height: 61,
      color: color,
      child: Row(
        children: [
          Image.asset(image),
          Text(text),
        ],
      ),

    );
  }
}
