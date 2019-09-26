import 'package:flutter/material.dart';
import 'package:gomasjid/cons/constant.dart';
import 'package:gomasjid/ui/splash_login.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            _titleDescription(),
            _textField(),
            _textForgetPassword(),
            _buttonLogin(context),
            _textRegistration(),
          ],
        ),
      ),
    );
  }
}

Widget _titleDescription() {
  return Container(
    alignment: Alignment.centerLeft,
    padding: EdgeInsets.only(left: 20, top: 20),
    child: Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 32),
        ),
        Text(
          'Assalamu\'alaikum',
          style: TextStyle(fontSize: 32),
          textAlign: TextAlign.left,
        ),
        Text(
          'Silahkan masuk untuk melanjutkan',
          textAlign: TextAlign.left,
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
            hintText: 'Username/No. HP'),
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

Widget _textForgetPassword() {
  return Container(
    alignment: Alignment.centerRight,
    child: FlatButton(
        onPressed: () {},
        child: Text(
          'Lupa Password',
          style: TextStyle(fontSize: 18),
        )),
  );
}

Widget _buttonLogin(BuildContext context) {
  return InkWell(
    child: Container(
      child: Center(
        child: FlatButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SplashLogin()));
          },
          child: Text(
            'LOGIN',
            style: TextStyle(fontSize: 24, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Color(0XFF4FC9F2)),
    ),
  );
}

Widget _textRegistration() {
  return Container(
    child: Row(
      children: <Widget>[
        Center(
          child: Row(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Text('belum memiliki akun? '),
              ),
              Align(
                alignment: Alignment.center,
                child: Text('Daftar'),
              )
            ],
          ),
        )
      ],
    ),
  );
}
