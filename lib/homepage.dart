import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_code/generate.dart';
import 'package:qr_code/scan.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget raisedButton(String text, Widget widget) {
    // ignore: deprecated_member_use
    return RaisedButton(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.all(20.0),
      child: Text(
        text,
        // ignore: prefer_const_constructors
        style: TextStyle(
          fontSize: 20.0,
          fontStyle: FontStyle.italic,
        ),
      ),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => widget));
        Colors.amber[200];
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: const BorderSide(color: Colors.amber, width: 4.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to QRCode App"),
      ),
      body: Container(
        // height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(15.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("assets/images/qrcode.jpeg"),
            SizedBox(
              height: 60.0,
              child: raisedButton("Scan QRCode", const Scan()),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 10.0),

            SizedBox(
              height: 60.0,
              // width: 100.0,
              child: raisedButton("Generate QRCode", Generate()),
            ),
          ],
        ),
      ),
    );
  }
}
