import 'package:flutter/material.dart';

import '../constants.dart';

class RecomendadosLista extends StatelessWidget {
  const RecomendadosLista({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Recomendados(image: "lib/assets/images/bottom_img_1.png",
          ),
          Recomendados(image: "lib/assets/images/bottom_img_2.png",
          ),
        ],
      ),
    );
  }
}

class Recomendados extends StatelessWidget {

  const Recomendados({
    Key? key, required this.image,
  }) : super(key: key);

  final String image;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}




