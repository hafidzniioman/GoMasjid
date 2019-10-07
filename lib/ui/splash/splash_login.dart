import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gomasjid/ui/home/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:gomasjid/ui/wavyheader.dart';

class SplashLogin extends StatefulWidget {
  @override
  _SplashLoginState createState() => _SplashLoginState();
}

class _SplashLoginState extends State<SplashLogin> {
  _startSplashScreen() async {
    var duration = Duration(seconds: 2);
    return Timer(duration, () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => LandingPage()));
    });
  }

  @override
  void initState() {
    super.initState();
    _startSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(children: <Widget>[
          WavyHeaderLogin(),
          _spinLoading(),
          _textWelcome(),
        ]),
      ),
    );
  }
}

Widget _spinLoading() {
  return Container(
    padding: EdgeInsets.fromLTRB(24, 80, 24, 16),
    child: Column(
      children: <Widget>[
        Center(
          child: Container(
            child: SpinKitChasingDots(
              color: Colors.lightBlueAccent,
            ),
          ),
        )
      ],
    ),
  );
}

Widget _textWelcome() {
  return Padding(
    padding: EdgeInsets.fromLTRB(16, 32, 16, 32),
    child: Column(children: <Widget>[
      Text(
        'Selamat Datang',
        style: TextStyle(fontSize: 32),
      ),
      Text(
        'Di',
        style: TextStyle(fontSize: 32),
      ),
      Padding(
        padding: EdgeInsets.only(top: 8),
        child: Column(
          children: <Widget>[
            Container(
              
              child: Text(
                'Go Masjid',
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.bold),
                    
              ),
            ),
            Text(
              '. . .',
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    ]),
  );
}
