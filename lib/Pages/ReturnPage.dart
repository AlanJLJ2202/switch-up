import 'package:flutter/material.dart';
import 'package:switch_up/Pages/PruebaPage.dart';

class ReturnPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: ListView(
        //padding: EdgeInsets.all(100),
        children: <Widget>[
          Column(
            children: <Widget>[
              RaisedButton(
                  child: Text('Regreso'),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PruebaPage()));
                  }),
              CuadroTexto()
            ],
          )
        ],
      ),
    );
  }
}


Widget CuadroTexto(){
  return Container(
    child: Row(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(color: Colors.white),
            padding: EdgeInsets.only(top: 100),
          ),
        )
      ],
    ),
  );
}