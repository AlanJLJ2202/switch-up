import 'package:flutter/material.dart';
import 'package:switch_up/Pages/Details_screen.dart';

import '../Components/TextWidget.dart';


class SnichDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    height = height < 540 ? 540 : height;

    return Scaffold(
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 70,
                  margin: EdgeInsets.only(top: height*0.07, left: width*0.07),
                  child: AppBar(width, () => Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(),),)
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 80, left: width*0.1, right: width*0.1),
                  child: TextWidget('Figura de coleccion de la familia Harry Potter, Snitch Dorada. Replica exacta apegada a la famosa serie',
                      13,
                      FontWeight.w500,
                      Colors.black
                  ),
                ),
                Container(
                    child: DetalleRequisitos(width)
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: DetalleBeneficios(width)
                ),
                LineaInferior('\$ 300.00 (Precio de compra)', Icons.price_check_outlined, Colors.green, width),
                LineaInferior('San Francisco del Rincon, Guanajuato.', Icons.add_location_sharp, Colors.red, width),
                LineaInferior('Tiempo de uso: 1 año.', Icons.whatshot_rounded, Colors.orange, width),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(top: 30, left: width*0.1),
                                child: TextWidget("Tags: ", 13, FontWeight.w600, Colors.deepPurpleAccent)
                            ),
                            Container(
                                padding: EdgeInsets.only(top: 30),
                                child: TextWidget('#HarryPotter, #Snitch, #Figura, #Replica', 13, FontWeight.w400, Colors.black)
                            ),
                          ],
                        ),
                      ),
                    ]
                ),
              ],
            )
          ],
        )
    );
  }

  Widget AppBar(double width, Function() funcion){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: width*0.12),
            child: IconButton(
              onPressed: funcion,
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.deepPurpleAccent,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: width*0.25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(
                  Icons.volunteer_activism,
                  color: Colors.deepPurpleAccent,
                ),
                TextWidget('Figura coleccionable', 20, FontWeight.w700, Colors.grey)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget DetalleRequisitos(double width){
    return  Container(
      width: width*0.8,
      margin: EdgeInsets.only(top: 35, left: width*0.1, right: width*0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 10),
            child: TextWidget(
                'Especificaciones:',
                15,
                FontWeight.w600,
                Colors.blue
            ),
          ),
          LineaInformacion('Practicamente nuevo, pues solo se saco del empaque'),
          LineaInformacion('Apto para regalos'),
          LineaInformacion('Color dorado con una pequeña base de madera tallada')
        ],
      ),
    );
  }

  Widget DetalleBeneficios(double width){
    return  Container(
      width: width*0.8,
      margin: EdgeInsets.only(top: 35, left: width*0.1, right: width*0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 10),
            child: TextWidget(
                'Condiciones:',
                15,
                FontWeight.w600,
                Colors.yellow.shade700
            ),
          ),
          LineaInformacion('Que la otra parte esté de verdad interesada'),
          LineaInformacion('Interambio en punto medio, preferiblemente medio dia'),
          LineaInformacion('Se negociarán articulos con un valor aprox de \$ 200.00'),
          LineaInformacion('Que la otra parte sea seria')
        ],
      ),
    );
  }

  Widget LineaInformacion(String texto){
    return Container(
      child: Row(
        children: <Widget>[
          Container(child: const Icon(
            Icons.adjust_sharp,
            color: Colors.deepPurpleAccent,
            size: 10,
          ),
          ),
          Container(
              margin: EdgeInsets.only(left: 5),
              child: TextWidget(
                  texto, //aqui irá la variable
                  13,
                  FontWeight.w500,
                  Colors.black)
          ),
        ],
      ),
    );
  }

  Widget LineaInferior(String texto, IconData icono, Color color, double width){
    return Container(
      margin: EdgeInsets.only(top: 20, left: width*0.1, right: width*0.1),
      child: Row(
        children: <Widget>[
          Container(child: Icon(
            icono,
            color: color,
            size: 25,
          ),
          ),
          Container(
              margin: EdgeInsets.only(left: 5),
              child: TextWidget(
                  texto, //aqui irá la variable
                  15,
                  FontWeight.w500,
                  Colors.deepPurpleAccent)
          ),
        ],
      ),
    );
  }
}