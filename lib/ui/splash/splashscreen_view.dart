import 'package:flutter/material.dart';
import 'dart:async';
import 'package:gomasjid/ui/registration/login_view.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  startSplashScreen() async {
    var duration = Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return LoginPage();
      }));
    });
  }

  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF4FC9F2),
      body: Center(
        child: Text('GO MASJID', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 38, color: Colors.white),)
      ),
    );
  }
}
