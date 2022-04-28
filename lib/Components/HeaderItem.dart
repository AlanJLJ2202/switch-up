import 'package:flutter/material.dart';

import '../constants.dart';

class HeaderItem extends StatelessWidget {
  const HeaderItem({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      //Esto nos da solo un 20% de la pantalla
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: 26 + kDefaultPadding
            ),
            height: size.height * 0.2 - 27,
            decoration: const BoxDecoration(color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(46),
                  bottomRight: Radius.circular(46),
                )
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'Mis articulos',
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Image.asset("lib/assets/images/logo.png")
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0,10),
                      blurRadius: 50,
                      color: Colors.deepPurpleAccent.withOpacity(0.30)
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}