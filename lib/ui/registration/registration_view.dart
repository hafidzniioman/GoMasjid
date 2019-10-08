import 'package:flutter/material.dart';
import 'package:gomasjid/cons/constant.dart';

import 'package:gomasjid/ui/registration/login_view.dart';
import 'package:gomasjid/ui/wavyheader.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  // TODO membuat dropdown
  String nameCity = '';

  var _penduduk = ['Kota Wisata', 'Cibubur', 'Cileungsi', 'Other'];
  var _currentSelectedItems = 'Kota Wisata';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          WavyHeaderLogin(),
          Container(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 32),
            child: Column(
              children: <Widget>[
                _textAssalamualaikum(),
                _username(),
                _dateLahir(),
                // TODO masukkan dropdown ke warga ini
                _warga(context),
                _alamat(),
                _buttonSend(context),
                _textRegistration(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _textAssalamualaikum() {
    return Container(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(bottom: 40, left: 2),
        child: Column(children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'Assalamualaikum',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'Daftar dulu yuk untuk melanjutkan',
              style: TextStyle(color: Colors.black38),
              textAlign: TextAlign.left,
            ),
          )
        ]),
      ),
    );
  }

  Widget _username() {
    return Container(
      padding: EdgeInsets.only(bottom: 32),
      child: Column(children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            'Username / No. HP',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
        ),
        TextFormField(
          autofocus: false,
          enabled: true,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
              border: UnderlineInputBorder(),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                color: ColorPalette.underLineTexField,
                width: 1.5,
              )),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 3),
              ),
              hintText: 'Masukkan Username'),
        ),
      ]),
    );
  }

  Widget _dateLahir() {
    return Container(
      padding: EdgeInsets.only(bottom: 32),
      child: Column(children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            'Tempat tanggal lahir',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
        ),
        TextFormField(
          autofocus: false,
          enabled: true,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
              border: UnderlineInputBorder(),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                color: ColorPalette.underLineTexField,
                width: 1.5,
              )),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 3),
              ),
              hintText: 'Tempat Tanggal Lahir'),
        ),
      ]),
    );
  }

  Widget _warga(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 32),
      child: Column(children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            'Warga',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
        ),
        TextField(
          onSubmitted: (String userInput) {
            setState(() {
              _currentSelectedItems = userInput;
            });
          },
        ),
        DropdownButton<String>(
          items: _penduduk.map((String dropdDownStringItem) {
            return DropdownMenuItem<String>(
                value: dropdDownStringItem, child: Text(dropdDownStringItem));
          }).toList(),
          onChanged: (String newValueSelected) {
            _onDropDownItemSelected(newValueSelected);
          },
          value: _currentSelectedItems,
        ),
      ]),
    );
  }

  void _onDropDownItemSelected(String newValueSelected) {
	  setState(() {
		  this._currentSelectedItems = newValueSelected;
	  });
  }
}

  Widget _alamat() {
    return Container(
      padding: EdgeInsets.only(bottom: 32),
      child: Column(children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            'Alamat',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
        ),
        TextFormField(
          autofocus: false,
          enabled: true,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
              border: UnderlineInputBorder(),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                color: ColorPalette.underLineTexField,
                width: 1.5,
              )),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 3),
              ),
              hintText: 'Masukkan Alamat anda'),
        ),
      ]),
    );
  }

  Widget _buttonSend(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Material(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.all(Radius.circular(30)),
        elevation: 5,
        child: MaterialButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => LoginPage()));
          },
          minWidth: 200,
          height: 42,
          child: Text(
            'Kirim',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _textRegistration(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Sudah memiliki akun? '),
        InkWell(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => LoginPage()));
          },
          child: Text(
            'Masuk',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.lightBlueAccent),
          ),
        )
      ],
    ));
  }

