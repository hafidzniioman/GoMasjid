import 'dart:io';
import 'package:flutter/material.dart';
import 'package:gomasjid/ui/registration/login_view.dart';
import 'package:gomasjid/ui/registration/registration_view.dart';

const List<Color> orangeGradients = [
  Color(0xFFFD7267),
  Color(0xFF5DBBDD),
  Color(0xFF5DBCD2),
];

List screens = [
  LoginPage(),
  RegistrationPage(),
];
class WavyHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      _buildClip(context),
      _arrowBack(context),
    ]);
  }
}

class WavyHeaderLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      _buildClip(context),
    ]);
  }
}

Widget _arrowBack(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 48),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
            color: Colors.black,
          ),
        )
      ],
    ),
  );
}

Widget _buildClip(BuildContext context) {
  return ClipPath(
    clipper: TopWaveClipper(),
    child: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: orangeGradients,
        begin: Alignment.topLeft,
        end: Alignment.center,
      )),
      height: MediaQuery.of(context).size.height / 2.5,
    ),
  );
}

class TopWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // This is where we decide what part of our image is going to be visible.
    var path = Path();
    path.lineTo(0.0, size.height);

    var firstControlPoint = new Offset(size.width / 7, size.height - 30);
    var firstEndPoint = new Offset(size.width / 6, size.height / 1.5);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width / 5, size.height / 4);
    var secondEndPoint = Offset(size.width / 1.5, size.height / 5);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    var thirdControlPoint =
        Offset(size.width - (size.width / 9), size.height / 6);
    var thirdEndPoint = Offset(size.width, 0.0);
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    ///move from bottom right to top
    path.lineTo(size.width, 0.0);

    ///finally close the path by reaching start point from top right corner
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
