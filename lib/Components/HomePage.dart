import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:switch_up/constants.dart';
import 'NavigationBar.dart';
import 'BodyPage.dart';


class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: BodyPage(),
      bottomNavigationBar: NavBar(),
    );
  }
}


 AppBar buildAppBar(){
  return AppBar(
    backgroundColor: kPrimaryColor,
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.menu),
      splashColor: Colors.white,
      splashRadius: 30,
      onPressed: () => print ("Menu Pressed"),
    ),
  );
 }