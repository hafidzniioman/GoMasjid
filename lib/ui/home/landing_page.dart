import 'package:flutter/material.dart';
import 'package:gomasjid/ui/wavyheader.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          WavyHeaderLogin(),
          Container(
            child: Center(
              child: Text(
                'Home Page'
              ),
            ),
          )
        ],
      ),
    );
  }
}