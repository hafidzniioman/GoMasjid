import 'package:flutter/material.dart';
import 'package:gomasjid/ui/wavyheader.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          WavyHeaderLogin(),
Text('Landing Page')

        ],
      ),
    );
  }
}


