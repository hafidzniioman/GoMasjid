import 'package:flutter/material.dart';
import 'package:gomasjid/cons/constant.dart';
import 'package:gomasjid/ui/registration/login_view.dart';
import 'package:gomasjid/ui/splash/splash_forgot.dart';
import 'package:gomasjid/ui/wavyheader.dart';

class InputNewPasswordPage extends StatefulWidget {
  @override
  _InputNewPasswordPageState createState() => _InputNewPasswordPageState();
}

class _InputNewPasswordPageState extends State<InputNewPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          WavyHeader(),
          Container(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                TextLupaPassword(),
                _textInformation(),
                _buildPadding(),
                _textInputNewPassword(),
                _textInputConfirmPassword(),
                _buttonSend(context)
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _textInformation() {
  return Container(
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.only(bottom: 24.0, left: 2, right: 24),
      child: Text(
        'Harap Masukkan password baru anda, password terdiri minimal 8 karakter',
        style: TextStyle(color: Colors.black38),
      ),
    ),
  );
}

Widget _buildPadding() {
  return Padding(
    padding: EdgeInsets.only(left: 2, top: 16, right: 2, bottom: 16),
  );
}

Widget _textInputNewPassword() {
  return Container(
    padding: EdgeInsets.only(bottom: 32),
    child: Column(children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          'Password Baru',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
      ),
      TextFormField(
        autofocus: false,
        enabled: true,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
              color: ColorPalette.underLineTexField,
              width: 1.5,
            )),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 3),
            ),
            hintText: 'Masukkan Password'),
      ),
    ]),
  );
}

Widget _textInputConfirmPassword() {
  return Container(
    padding: EdgeInsets.only(bottom: 16),
    child: Column(children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          'Konfirmasi Password Baru',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
      ),
      TextFormField(
        autofocus: false,
        enabled: true,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
              color: ColorPalette.underLineTexField,
              width: 1.5,
            )),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 3),
            ),
            hintText: 'Masukkan Password'),
      ),
    ]),
  );
}

Widget _buttonSend(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 16),
    child: Material(
      color: Colors.lightBlueAccent,
      borderRadius: BorderRadius.all(Radius.circular(30)),
      elevation: 5,
      child: MaterialButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => SplashForgot()));
        },
        minWidth: 200,
        height: 42,
        child: Text(
          'Kirim',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    ),
  );
}
