import 'package:flutter/material.dart';

class PruebaPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Drawer(),
      appBar: AppBar(
        elevation: 20,
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(100),
        child: Column(
          children: <Widget>[
            Texto(),
          ],
        ),
      )
    );
  }
}


Widget Texto(){
  return Text(
      'Hola',
    style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 30
    ),
    textAlign: TextAlign.center,
  );
}