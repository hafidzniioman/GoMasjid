
import 'package:flutter/material.dart';
import 'package:gomasjid/cons/constant.dart';
import 'package:gomasjid/ui/forgot/otp_view.dart';
import 'package:gomasjid/ui/wavyheader.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      WavyHeader(),
      Container(
        padding: EdgeInsets.fromLTRB(20, 120, 20, 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TextLupaPassword(),
            _textInformation(),
            _textInputPassword(),
            _buttonSend(context),
          ],
        ),
      ),
    ]));
  }
}

Widget _textInformation() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 24.0),
    child: Text(
      'Silahkan masukkan Nomor Handpone anda, kode OTP akan digunakan untuk mengubah password',
      style: TextStyle(color: Colors.black38),
    ),
  );
}

Widget _textInputPassword() {
  return Container(
    padding: EdgeInsets.only(bottom: 16),
    child: TextFormField(
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
          hintText: 'Masukkan No Handphone'),
    ),
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
              .push(MaterialPageRoute(builder: (context) => OtpPage()));
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
