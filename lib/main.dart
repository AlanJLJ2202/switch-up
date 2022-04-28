import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:switch_up/Pages/TabPage.dart';
import 'package:switch_up/constants.dart';
import 'Components/HomePage.dart';
import 'Pages/InicioPage.dart';
import 'Pages/LoginPage.dart';
import 'Pages/PruebaPage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Login",
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}




