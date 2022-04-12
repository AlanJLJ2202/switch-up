import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:switch_up/Pages/TabPage.dart';
import 'Pages/LoginPage.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Flutter Login",
      debugShowCheckedModeBanner: false,
      home: LoginPage(),

    );
  }
}




