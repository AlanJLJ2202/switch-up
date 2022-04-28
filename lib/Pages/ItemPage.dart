//import 'dart:html';

//import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:switch_up/constants.dart';

import '../Components/HeaderItem.dart';
import '../Components/HeaderWithSearchBox.dart';
import '../Components/NavigationBar.dart';
import '../Components/RecomendadosLista.dart';
import '../Components/Recomends.dart';
import '../../Components/TitleWithMoreBtn.dart';
import 'ReturnPage.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              HeaderItem(size: size),
              Contenedor(Colors.blue),
              Contenedor(Colors.red),
              Contenedor(Colors.green),
              Contenedor(Colors.yellow),
              Contenedor(Colors.purple),
              Contenedor(Colors.blue),
              Contenedor(Colors.red),
              Contenedor(Colors.green),
              Contenedor(Colors.yellow),
              Contenedor(Colors.purple),
            ],
          )
        ],
      ),
    );
  }

}


Widget Contenedor (Color color){
  return Container(
    margin: const EdgeInsets.only(
        top: 0,
        left: 20,
        right: 20,
        bottom: 20
    ),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(20),
        boxShadow: [
        BoxShadow(
        offset: Offset(0,10),
        blurRadius: 50,
        color: color.withOpacity(0.30)
       )
        ]
    ),
    height: 150,
    child: Row(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(left: 20, top: 20, bottom: 20),
            padding: EdgeInsets.only(left: 20, top: 20),
            width: 110,
            decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 50,
                    color: color.withOpacity(0.10)
                )
              ]
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 120),
          child: RaisedButton(

              child: Text('QR'),
              onPressed: (){
                //Navigator.push(BuildContext(), MaterialPageRoute(builder: (context) => ReturnPage()));
              },

              ),
        )
      ],
    ),
  );
}





AppBar buildAppBar(){
  return AppBar(
    backgroundColor: Colors.deepPurpleAccent,
    elevation: 0,
    /*leading: IconButton(
      icon: Icon(Icons.menu),
      splashColor: Colors.white,
      splashRadius: 30,
      onPressed: () => print ("Menu Pressed"),
    ),*/

  );
}
