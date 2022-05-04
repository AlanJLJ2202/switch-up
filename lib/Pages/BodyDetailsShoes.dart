import 'package:flutter/material.dart';
import 'package:switch_up/Pages/ImageIconsShoes.dart';
import 'package:switch_up/Pages/ItemDetails.dart';
import 'package:switch_up/Pages/TitlePriceShoes.dart';
import '../constants.dart';

import 'BusinessDetails.dart';
import 'Image_and_icons.dart';
import 'Title_and_price.dart';

class BodyDetailsShoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIconsShoes(size: size),
          TitleAndPriceShoes(title: "Tennis Nike", country: "Calzado"),
          SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: FlatButton(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  color: Colors.deepPurpleAccent,
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> BusinessDetails(),
                  ),
                  ),
                  child: const Text(
                    "Switch Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDetails(),),),
                  child: Text("Descripcion"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
