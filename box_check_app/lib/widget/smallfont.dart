import 'package:flutter/material.dart';


class SmallFont extends StatelessWidget {
 final String text;
 final Color color;
 final double size;

  const SmallFont({Key? key, required this.text,this.color=Colors.black, this.size=15}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10,top: 10),
      child: Text(text,style: TextStyle(fontSize: size,color: color),
      ),
    );
  }
}
