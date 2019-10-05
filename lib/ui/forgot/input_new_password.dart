import 'package:flutter/material.dart';
import 'package:gomasjid/cons/constant.dart';
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
      padding: const EdgeInsets.only(bottom: 24.0, left: 2),
      child: Text(
        'Harap Masukkan password Baru anda',
        style: TextStyle(color: Colors.black38),
      ),
    ),
  );
}
