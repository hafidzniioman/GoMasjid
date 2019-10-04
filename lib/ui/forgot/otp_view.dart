import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gomasjid/ui/wavyheader.dart';

class OtpPage extends StatefulWidget {
  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  TextEditingController controller1 = new TextEditingController();
  TextEditingController controller2 = new TextEditingController();
  TextEditingController controller3 = new TextEditingController();
  TextEditingController controller4 = new TextEditingController();
  TextEditingController controller5 = new TextEditingController();
  TextEditingController controller6 = new TextEditingController();

  TextEditingController currController = new TextEditingController();

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
    controller5.dispose();
    controller6.dispose();
    super.dispose();
  }

  @override
  void initState() {
    currController = controller1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [
      Padding(
        padding: EdgeInsets.only(left: 0, right: 2),
        child: Container(
          color: Colors.transparent,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 2, left: 2),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              border: Border.all(width: 1, color: Color.fromRGBO(0, 0, 0, 0.1)),
              borderRadius: BorderRadius.circular(4)),
          child: TextField(
            inputFormatters: [LengthLimitingTextInputFormatter(1)],
            enabled: false,
            controller: controller1,
            autofocus: false,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 2, left: 2),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              border: Border.all(width: 1, color: Color.fromRGBO(0, 0, 0, 0.1)),
              borderRadius: BorderRadius.circular(4)),
          child: TextField(
            inputFormatters: [LengthLimitingTextInputFormatter(1)],
            enabled: false,
            controller: controller2,
            autofocus: false,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 2, left: 2),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              border: Border.all(width: 1, color: Color.fromRGBO(0, 0, 0, 0.1)),
              borderRadius: BorderRadius.circular(4)),
          child: TextField(
            inputFormatters: [LengthLimitingTextInputFormatter(1)],
            enabled: false,
            controller: controller3,
            autofocus: false,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 2, left: 2),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              border: Border.all(width: 1, color: Color.fromRGBO(0, 0, 0, 0.1)),
              borderRadius: BorderRadius.circular(4)),
          child: TextField(
            inputFormatters: [LengthLimitingTextInputFormatter(1)],
            enabled: false,
            controller: controller4,
            autofocus: false,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 2, left: 2),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              border: Border.all(width: 1, color: Color.fromRGBO(0, 0, 0, 0.1)),
              borderRadius: BorderRadius.circular(4)),
          child: TextField(
            inputFormatters: [LengthLimitingTextInputFormatter(1)],
            enabled: false,
            controller: controller5,
            autofocus: false,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 2, left: 2),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              border: Border.all(width: 1, color: Color.fromRGBO(0, 0, 0, 0.1)),
              borderRadius: BorderRadius.circular(4)),
          child: TextField(
            inputFormatters: [LengthLimitingTextInputFormatter(1)],
            enabled: false,
            controller: controller6,
            autofocus: false,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 2, right: 0),
        child: Container(
          color: Colors.transparent,
        ),
      )
    ];

    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(children: <Widget>[
        WavyHeader(),
        _textLupaPassword(),
        Container(
          child: Column(
            children: <Widget>[
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    GridView.count(
                      crossAxisCount: 8,
                      mainAxisSpacing: 10,
                      shrinkWrap: true,
                      primary: false,
                      scrollDirection: Axis.vertical,
                      children: List<Container>.generate(
                          8,
                          (int index) => Container(
                                child: widgetList[index],
                              )),
                    ),
                  ],
                ),
                flex: 20,
              ),
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 8, top: 16, right: 8, bottom: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                inputTextToField('1');
                              },
                              child: Text(
                                '1',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w400),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {
                                inputTextToField('2');
                              },
                              child: Text(
                                '2',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w400),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {
                                inputTextToField('3');
                              },
                              child: Text(
                                '3',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w400),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }

  Widget _textLupaPassword() {
  return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(top: 60),
      child: Text(
        'Lupa Password',
        style: TextStyle(
            fontSize: 32, color: Colors.black, fontWeight: FontWeight.bold),
      ));
}

  void inputTextToField(String str) {
    // Edit first text field
    if (currController == controller1) {
      controller1.text = str;
      currController = controller2;
    } else if (currController == controller2) {
      controller2.text = str;
      currController = controller3;
    } else if (currController == controller3) {
      controller3.text = str;
      currController = controller4;
    } else if (currController == controller4) {
      controller4.text = str;
      currController = controller5;
    } else if (currController == controller5) {
      controller5.text = str;
      currController = controller6;
    } else if (currController == controller6) {
      controller6.text = str;
      currController = controller6;
    }
  }
}
