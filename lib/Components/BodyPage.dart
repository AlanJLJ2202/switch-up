//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:switch_up/constants.dart';

import 'HeaderWithSearchBox.dart';
import 'RecomendadosLista.dart';
import 'Recomends.dart';
import 'TitleWithMoreBtn.dart';

class BodyPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    //Esto nos brinda el ancho y largo total de la pantalla
    Size size = MediaQuery.of(context).size;
    //Esto permite escrolear en dispositivos mas pequeños
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Categorias",
            press: () {},
          ),
          //Solo tomara el 40% del ancho
          Recomends(),
          TitleWithMoreBtn(
              title: "Recomendados",
              press: () {}),
          RecomendadosLista(),
          SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}

