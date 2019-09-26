import 'package:flutter/material.dart';

class SplashLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF4FC9F2),
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
          Navigator.pop(context);
        },),
      ),
      body: Center(
        child: Container(
          child: Text('Splash Login GO Masjid'),
        ),
      ),
    );
  }
}
