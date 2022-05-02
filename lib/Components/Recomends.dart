import 'package:flutter/material.dart';
import 'package:switch_up/Pages/Details_screen.dart';

import '../constants.dart';

class Recomends extends StatelessWidget {
  const Recomends({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendCard(
            image: "lib/assets/images/image_1.png",
            title: "Producto 1",
            title2: "Info",
            price: 440,
            press: () {},
          ),
          RecomendCard(
            image: "lib/assets/images/image_2.png",
            title: "Producto 2",
            title2: "Info",
            price: 440,
            press: () {},
          ),
          RecomendCard(
            image: "lib/assets/images/image_3.png",
            title: "Producto 3",
            title2: "info",
            price: 440,
            press: () {},
          ),
          RecomendCard(
            image: "lib/assets/images/image_1.png",
            title: "Libros",
            title2: "Books",
            price: 440,
            press: () {},
          ),
          RecomendCard(
            image: "lib/assets/images/image_2.png",
            title: "Libros",
            title2: "Books",
            price: 440,
            press: () {},
          ),
        ],
      ),
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
    required this.press,
  }) : super(key: key);

  final String image, title, title2;
  final int price;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(),),);
            },
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
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
                          style: Theme.of(context).textTheme.button,

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
                  Spacer(),
                  Text('\$$price',
                    style:
                    Theme.of(context).textTheme.button?.copyWith(color: Colors.black),
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