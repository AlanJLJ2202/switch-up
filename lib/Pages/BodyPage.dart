//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:switch_up/constants.dart';

import '../Components/HeaderWithSearchBox.dart';
import '../Components/RecomendadosLista.dart';
import '../Components/Recomends.dart';
import '../Components/TitleWithMoreBtn.dart';

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
              press: () {}),
          const RecomendadosLista(),
          TitleWithMoreBtn(
            title: "Productos",
            press: () {},
          ),
          //Solo tomara el 40% del ancho
          const Recomends(),
          const SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}

