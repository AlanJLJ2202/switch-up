import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:switch_up/constants.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'HomePage.dart';
import 'RegisterPage.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  TextEditingController correo = TextEditingController();
  TextEditingController contrasena = TextEditingController();

  bool isRememberMe = false;

  Widget buildEmail(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Email',
          style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            controller: correo,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top:14),
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xff0E0E0E),
                ),
                hintText: 'Email',
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),
          ),
        )
      ],
    );
  }

  Widget buildPassword(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          child: TextField(
            obscureText: true,
            controller: contrasena,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top:14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color(0xff0E0E0E),
                ),
                hintText: 'Password',
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),
          ),
        ),
      ],
    );
  }

  Widget buildForgotPassBtn(){
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print("Forgot Pass Pressed"),
        padding: EdgeInsets.only(right: 0),
        child: Text(
          '¿Ha olvidado su contraseña?',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold

          ),
        ),
      ),
    );
  }

  Widget buildRememberCb(){
    return Container(
      height: 20,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: isRememberMe,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  isRememberMe = value!;
                });
              },
            ),
          ),
          Text(
            'Recordar',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }

  Widget buildLoginBtn(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 45),
      width: double.infinity,
      child: RaisedButton(
        elevation: 20,
        onPressed: () => login(),
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(55)
        ),
        color: Colors.white,
        child: Text(
          'Ingresar',
          style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  Widget buildSignUpBtn(){
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage())),
      child: RichText(
        text: TextSpan(
          children: [
            const TextSpan(
              text: 'No tiene una cuenta?  ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500
              )
            ),
            TextSpan(
              text: 'Registrarse',
              style: TextStyle(
                color: Colors.deepPurpleAccent.shade100,
                fontSize: 18,
                fontWeight: FontWeight.bold
              )
            )
          ]
        ),
      ),
    );
  }

  Widget titulo(){
    return Container(

      decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            fit: BoxFit.fitHeight,
            image: AssetImage("lib/assets/images/LogoSwitch.png") ,
          )
      ),
    );
  }

  @override
  Widget build (BuildContext context){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(

            height: height,
            width: width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.deepPurpleAccent.shade700,
                      Colors.deepPurpleAccent.shade400,
                      Colors.deepPurpleAccent.shade100,
                      Color(0xffffffff),
                    ]
                )
            ),
            child: Column(
              children: <Widget>[
                Expanded(
                    flex: 7,
                    child: Container(

                        child: titulo(),
                        margin: EdgeInsets.only(top: height/11),

                    )
                ),
                Expanded(flex: 1, child: SizedBox(height: height/15)),
                Expanded(
                    flex:4,
                    child: Container(
                        child: buildEmail(),
                        margin: EdgeInsets.only(left: width/10, right: width/10),
                    )
                ),
                Expanded(
                    flex: 3,
                    child: Container(
                        child: buildPassword(),
                        margin: EdgeInsets.only(left: width/10, right: width/10),
                    )
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                        child: buildForgotPassBtn(),
                        margin: EdgeInsets.only(right: width/10),
                    )
                ),
                Expanded(
                    flex: 1,
                        child: Container(child: buildRememberCb(),
                        margin: EdgeInsets.only(left: width/10),
                    )
                ),
                Expanded(
                    flex: 5,
                    child: Container(
                        child: buildLoginBtn(),
                        margin: EdgeInsets.only(left: width/4, right: width/4),
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                    )
                ),
                Expanded(
                    flex: 5,
                    child: Container(
                        child: buildSignUpBtn(),
                        margin: EdgeInsets.only(top: height/15),
                    )
                ),
              ],
            ),
          )
        ],
      )

    );
  }

  Future login() async {
    var url = Uri.parse("https://switch-up.000webhostapp.com/Login.php");
    var response = await http.post(url, body: {
      "correo": correo.text,
      "contrasena": contrasena.text,
    });
    var data = json.decode(response.body);
    if (data == "Success") {
      correo.clear();
      contrasena.clear();
      Fluttertoast.showToast(
          msg: 'Inicio de sesion exitoso'
      );
      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage(),),);
    } else {
      Fluttertoast.showToast(
        msg: "Usuario o contraseña incorrectos"
      );

    }
  }

}