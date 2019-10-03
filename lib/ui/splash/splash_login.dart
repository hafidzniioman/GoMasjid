import 'dart:async';
import 'package:gomasjid/ui/landing_page.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
          Navigator.pop(context);
        }),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(children:<Widget>[
          Text('Selamat Datang'),
          Text('di'),
          Text('GO MASJID')
        ]),
      ),
    );
  }
}
