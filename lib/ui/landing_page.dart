import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {

  var androidVersions = [
    'Android Cupcake',
    'Android Dounut',
    'Android Eclair',
    'Android Froyo',
    'Android Gingerbread',
    'Android Honeycomb',
    'Android Ice Cream Sandwich',
    'Android JellyBean',
    'Android Kitkat'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Landing Page'),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Padding(padding: EdgeInsets.all(8),
          child: Text(androidVersions[index]),);
      }, itemCount: androidVersions.length,),
    );
  }
}
