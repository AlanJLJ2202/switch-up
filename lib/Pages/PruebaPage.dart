import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:switch_up/Components/HomePage.dart';

import 'ReturnPage.dart';

class PruebaPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.red,
      body: ListView(
        //padding: EdgeInsets.all(100),
        children: <Widget>[
          Column(
            children: <Widget>[
              ContainerLogo(),
              ContainerDotted(),
              ContainerButtom(),
              RaisedButton(
                  child: Text('Hola'),
                  onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ReturnPage()));
              })
            ],
          )
         ],
        ),
    );
  }
}


Widget ContainerLogo(){

  return Container(
    margin: const EdgeInsets.only(
        top: 150,
        left: 50,
        right: 50,
    ),
    padding: const EdgeInsets.only(
      top: 30,
      left: 35,
      right: 30,
      bottom: 30
    ),
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        )
    ),
    child: Image.asset("lib/assets/images/logoCoca.png"),
  );
}



Widget ContainerDotted(){
  return Container(
    margin: const EdgeInsets.only(
      top: 0,
      left: 50,
      right: 50,
    ),
    padding: const EdgeInsets.only(
        top: 0,
        left: 0,
        right: 0,
        bottom: 0
    ),
    decoration: const BoxDecoration(
        color: Colors.white,
    ),

    child: Row(
      children: <Widget>[
         Container(
          padding: const EdgeInsets.only(
            top: 20,
            bottom: 20,
            right: 10,
            left: 20
          ),
          decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20)
              )
          ),
        ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 5),
              child: const DottedLine(
                dashColor: Colors.black,
                //dashLength: 32,
              ),
            ),
          ),

        Container(
          padding: const EdgeInsets.only(
              top: 20,
              bottom: 20,
              right: 10,
              left: 20
          ),
          decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)
              )
          ),
        ),
      ],
    ),
  );
}


Widget ContainerButtom(){

  return Container(
    margin: const EdgeInsets.only(
      top: 0,
      left: 50,
      right: 50,
    ),
    height: 200,
    padding: const EdgeInsets.only(
        top: 30,
        left: 35,
        right: 30,
        bottom: 30
    ),
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        )
    ),
  );
}

Widget Boton(){
  return Container(
    padding: EdgeInsets.only(top: 50),
    child: RaisedButton(
      child: Text('Aprieta aqui'),
      onPressed: (){

      },
      color: Colors.white,
    ),
  );
}


Widget Texto(String Texto){
  return Text(
    Texto,
    style: const TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 30
    ),
    textAlign: TextAlign.center,
  );
}