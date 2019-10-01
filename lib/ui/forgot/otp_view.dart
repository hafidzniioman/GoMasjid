import 'package:flutter/material.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';

class OtpPage extends StatefulWidget {
  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
          Navigator.pop(context);
        }),
      ),
      body: SafeArea(
        child: PinEntryTextField(
          onSubmit: (String pin){
            showDialog(context: context, builder: (context){
              return AlertDialog(
                title: Text('PIN'),
                content: Text('Pin Entered is $pin'),
              );
            });
          },
        ),
      ),
    );
  }
}

