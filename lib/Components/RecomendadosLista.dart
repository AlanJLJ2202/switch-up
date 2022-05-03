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
          Recomendados(image: "lib/assets/images/bookk.jpg",
          ),
          Recomendados(image: "lib/assets/images/VideoGamesCategory.jpg",
          ),
          Recomendados(image: "lib/assets/images/ShoeCategory.jpg",
          ),
          Recomendados(image: "lib/assets/images/FiguresCategory.jpg",
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
            left: kDefaultPadding - 5,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2
        ),
        width: size.width * 0.3,
        height: 130,
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




