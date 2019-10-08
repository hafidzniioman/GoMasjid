import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gomasjid/ui/registration/login_view.dart';
import 'package:gomasjid/ui/wavyheader.dart';

class SplashForgot extends StatefulWidget {
  @override
  _SplashForgotState createState() => _SplashForgotState();
}

class _SplashForgotState extends State<SplashForgot> {
  _startSplashScreen() async {
    var duration = Duration(seconds: 2);
    return Timer(duration, () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  void initState() {
    _startSplashScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          WavyHeaderLogin(),
          _textInformation(),
        ],
      ),
    );
  }
}

Widget _textInformation() {
  return Container(
    padding: EdgeInsets.fromLTRB(24, 480, 24, 16),
    child: Column(
      children: <Widget>[
        Center(child: Text('Alhamdulillah!', style: TextStyle(fontSize: 36))),
        Center(
          child: Text('Anda telah berhasil mengubah password',
              style: TextStyle(fontSize: 16)),
        ),
        Center(
          child: Text('Silahkan masuk dengan password baru',
              style: TextStyle(fontSize: 16)),
        ),
      ],
    ),
  );
}
