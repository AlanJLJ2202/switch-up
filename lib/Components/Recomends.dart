import 'package:flutter/material.dart';
import 'package:switch_up/Pages/Details_screen.dart';

import '../constants.dart';

class Recomends extends StatelessWidget {
  const Recomends({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        //scrollDirection: Axis.vertical,
      children: <Widget>[
        Row(
          children: [
            RecomendCard(
              image: "lib/assets/images/figura.png",
              title: "Figura",
              title2: "Muñeca Colecc.",
              price: 440,
              funcion: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(),),),
            ),
            RecomendCard(
              image: "lib/assets/images/book.jpg",
              title: "Libro",
              title2: "Harry Potter",
              price: 440,
              funcion: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(),),),
            ),
            ]
    ),
            Row(
              children: <Widget>[
                RecomendCard(
                  image: "lib/assets/images/game.jpg",
                  title: "Videojuego",
                  title2: "Xbox",
                  price: 440,
                  funcion: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(),),),
                ),
                RecomendCard(
                  image: "lib/assets/images/tennis.jpg",
                  title: "Calzado",
                  title2: "Tennis",
                  price: 440,
                  funcion: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(),),),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                RecomendCard(
                image: "lib/assets/images/image_2.png",
                title: "Planta",
                title2: "Weed",
                price: 440,
                funcion: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(),),),
                ),
                RecomendCard(
                  image: "lib/assets/images/image_2.png",
                  title: "Libros",
                  title2: "Books",
                  price: 440,
                  funcion: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(),),),
                ),
              ],
            ),
        Row(
          children: <Widget>[
            RecomendCard(
              image: "lib/assets/images/image_2.png",
              title: "Libros",
              title2: "Books",
              price: 440,
              funcion: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(),),),
            ),
            RecomendCard(
              image: "lib/assets/images/image_2.png",
              title: "Libros",
              title2: "Books",
              price: 440,
              funcion: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(),),),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            RecomendCard(
              image: "lib/assets/images/image_2.png",
              title: "Libros",
              title2: "Books",
              price: 440,
              funcion: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(),),),
            ),
            RecomendCard(
              image: "lib/assets/images/image_2.png",
              title: "Libros",
              title2: "Books",
              price: 440,
              funcion: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(),),),
            ),
          ],
        ),

        ]
          );
  }
}

class RecomendCard extends StatelessWidget {
  const RecomendCard({
    Key? key,
    required this.image,
    required this.title,
    required this.title2,
    required this.price,
    required this.funcion,
  }) : super(key: key);

  final String image, title, title2;
  final int price;
  final Function() funcion;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        //bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Container(
            height: 185,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(image),
      ),
          ),
          ),
          GestureDetector(
            onTap: funcion,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,10),
                      blurRadius: 50,
                      color: Colors.white.withOpacity(0.23),
                    ),
                  ]
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: //Theme.of(context).textTheme.button,
                          TextStyle(color: Colors.deepPurpleAccent)
                        ),
                        TextSpan(
                          text: "$title2".toUpperCase(),
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                          ),
                        )
                      ],
                    ),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}