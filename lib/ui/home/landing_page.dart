import 'package:flutter/material.dart';
import 'package:gomasjid/ui/wavyheader.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Column(
        children: <Widget>[_backgroundHome(mediaQuery)],
      ),
    );
  }
}

Widget _backgroundHome(MediaQueryData mediaQueryData) {
  return Stack(children: <Widget>[
    Container(
      width: double.infinity,
      height: mediaQueryData.size.height / 3,
      decoration: BoxDecoration(
        color: Color(0xFF5DBCD2),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(48)),
      ),
    ),
    Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.fromLTRB(24, 80, 32, 8),
        child: Text(
          'Masjid Darussalam',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Icon(
              Icons.location_on,
              color: Colors.white,
            ),
          ),
          Text('Cibubur, Jawa Barat', style: TextStyle(color: Colors.white)),
        ],
      ),
      Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(top: 48, left: 24),
        child: Text(
          'Lihat Selengkapnya >',
          style: TextStyle(color: Colors.white),
        ),
      ),
      // TODO box ambang 
      Container(
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.rectangle, 
        borderRadius: BorderRadius.all(Radius.circular(40))
      ),
    )
    ]),
    
  ]);
}
