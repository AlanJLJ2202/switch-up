import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:switch_up/Pages/TabPage.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();
}



class _LoginPageState extends State<LoginPage>{

  bool isRememberMe = false;

  Widget buildEmail(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: TextStyle(
              color: Colors.white,
              fontSize: 26,
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
              fontSize: 26,
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
        )
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
        onPressed: () => print('Login Pressed'),
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(55)
        ),
        color: Colors.white,
        child: Text(
          'Ingresar',
          style: TextStyle(
            color: Color(0xcc000000),
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  Widget buildSignUpBtn(){
    return GestureDetector(
      onTap: () => print ("Sign up Pressed"),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
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
                color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.bold
              )
            )
          ]
        ),
      ),
    );
  }

  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xB7000000),
                      Color(0x99616365),
                      Color(0xccbdb6b6),
                      Color(0xffffffff),
                    ]
                  )
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120
                  ),
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Bienvenido',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 70,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 100),
                    buildEmail(),
                    SizedBox(height: 20),
                    buildPassword(),
                    buildForgotPassBtn(),
                    buildRememberCb(),
                    SizedBox(height: 20),
                    buildLoginBtn(),
                    buildSignUpBtn()
                  ],
                ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}