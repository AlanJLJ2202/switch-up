import 'package:flutter/material.dart';

import '../constants.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: kDefaultPadding * 2,
          right: kDefaultPadding * 2,
          bottom: 1
      ),
      height: 65,
      decoration: BoxDecoration(
        color: Colors.deepPurpleAccent,
        boxShadow: [BoxShadow(
            offset: Offset(0,-10),
            blurRadius: 35,
            color: Colors.white.withOpacity(0.38)
        ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.home, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.whatshot_rounded, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.apps, color: Colors.white),
          ),

        ],
      ),
    );
  }
}