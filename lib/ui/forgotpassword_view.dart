import 'package:flutter/material.dart';
import 'package:gomasjid/cons/constant.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Column(children: <Widget>[
                Container(
                  child: Text(
                    'LUPA PASSWORD',
                    style: TextStyle(fontSize: 32),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                        'Silahkan masukkan Nomor Handphone anda, kode OTP akan digunakan untuk mengubah password')),
              ]),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: ColorPalette.underLineTexField,
                      width: 1.5,
                    )),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 3)),
                    hintText: 'Masukkan Password Baru'),
                style: TextStyle(
                  color: Colors.black54,
                ),
                obscureText: true,
                autofocus: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
