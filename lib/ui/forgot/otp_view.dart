import 'package:flutter/material.dart';
import 'package:gomasjid/cons/constant.dart';
import 'package:gomasjid/ui/forgot/input_new_password.dart';
import 'package:gomasjid/ui/wavyheader.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class OtpPage extends StatefulWidget {
  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  TextEditingController controller = TextEditingController();
  String thisText = "";
  int pinLength = 4;

  bool hasError = false;
  String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        WavyHeader(),
        Container(
          padding: EdgeInsets.fromLTRB(20, 120, 20, 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TextLupaPassword(),
              _textInformation(),
              _buildOtpBox(),
            ],
          ),
        ),
      ]),
    );
  }

  Widget _buildOtpBox() {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 60.0),
            ),
            PinCodeTextField(
              autofocus: false,
              controller: controller,
              hideCharacter: true,
              highlight: true,
              highlightColor: Colors.blue,
              defaultBorderColor: Colors.black,
              hasTextBorderColor: Colors.green,
              maxLength: pinLength,
              hasError: hasError,
              maskCharacter: "*",
              onTextChanged: (text) {
                setState(() {
                  hasError = false;
                });
              },
              onDone: (text) {
                print("DONE $text");
              },
              pinCodeTextFieldLayoutType:
                  PinCodeTextFieldLayoutType.AUTO_ADJUST_WIDTH,
              wrapAlignment: WrapAlignment.start,
              pinBoxDecoration:
                  ProvidedPinBoxDecoration.underlinedPinBoxDecoration,
              pinTextStyle: TextStyle(fontSize: 30.0),
              pinTextAnimatedSwitcherTransition:
                  ProvidedPinBoxTextAnimation.scalingTransition,
              pinTextAnimatedSwitcherDuration: Duration(milliseconds: 300),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text("Kirim"),
                    onPressed: () {
                      setState(() {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => InputNewPasswordPage()));
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _textInformation() {
  return Container(
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.only(bottom: 24.0, left: 3),
      child: Text(
        'Harap Masukkan Kode OTP',
        style: TextStyle(color: Colors.black38),

      ),
    ),
  );
}
