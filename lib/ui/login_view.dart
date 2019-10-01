import 'package:flutter/material.dart';
import 'package:gomasjid/cons/constant.dart';
import 'package:gomasjid/ui/forgot/forgotpassword_view.dart';
import 'package:gomasjid/ui/registration_view.dart';
import 'package:gomasjid/ui/splash/splash_login.dart';
import 'package:bloc/bloc.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 80, left: 32, right: 32, bottom: 32),
          child: Column(
            children: <Widget>[
              _titleDescription(),
              _textField(),
              _textForgetPassword(context),
              _buttonLogin(context),
              _textRegistration(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _titleDescription() {
  return Container(
    alignment: Alignment.centerLeft,
    padding: EdgeInsets.only(left: 0, top: 20),
    child: Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 32),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            'Assalamu\'alaikum',
            style: TextStyle(fontSize: 32),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            'Silahkan masuk untuk melanjutkan',
            textAlign: TextAlign.left,
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 25)),
      ],
    ),
  );
}

Widget _textField() {
  return Column(
    children: <Widget>[
      Padding(padding: EdgeInsets.only(top: 32)),
      Container(
        child: TextFormField(
          decoration: InputDecoration(
              border: UnderlineInputBorder(),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                color: ColorPalette.underLineTexField,
                width: 1.5,
              )),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 3.0)),
              hintText: 'Username/No. HP'),
        ),
      ),
      Padding(padding: EdgeInsets.only(top: 30)),
      TextFormField(
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: ColorPalette.underLineTexField,
            width: 1.5,
          )),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 3.0)),
          hintText: 'Password',
        ),
        style: TextStyle(color: Colors.black54),
        obscureText: true,
        autofocus: false,
      )
    ],
  );
}

Widget _textForgetPassword(BuildContext context) {
  return Container(
    alignment: Alignment.centerRight,
    child: FlatButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ForgotPasswordPage()));
        },
        child: Text(
          'Lupa Password',
          style: TextStyle(fontSize: 18),
        )),
  );
}

Widget _buttonLogin(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 16),
    child: Material(
      color: Colors.lightBlueAccent,
      borderRadius: BorderRadius.all(Radius.circular(30)),
      elevation: 5,
      child: MaterialButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => SplashLogin()));
        },
        minWidth: 200,
        height: 42,
        child: Text(
          'Masuk',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    ),
  );
}

Widget _textRegistration(BuildContext context) {
  return Center(
      child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text('Belum memiliki akun? '),
      InkWell(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => RegistrationPage()));
        },
        child: Text(
          'Daftar',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      )
    ],
  ));
}

