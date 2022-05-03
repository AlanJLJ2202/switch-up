import 'dart:ffi';

import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget{
  final String text;
  final double size;
  final FontWeight fWeight;
  final Color color;

  TextWidget(this.text, this.size, this.fWeight, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text,
        textAlign: TextAlign.center,
        style: TextStyle(fontFamily:'Montserrat', color: color, fontSize: size, fontWeight: fWeight),
      ),
    );
  }

}