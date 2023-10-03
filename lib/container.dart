import 'package:flutter/cupertino.dart';

class ContainerData extends StatelessWidget {
  String text;
  Color color;
  String image;
  ContainerData(this.text,this.image,this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(7)
      ),
      width: 151,
      height: 61,

      child: Row(
        children: [
          Image.asset(image),
          Text(text),
        ],
      ),

    );
  }
}
