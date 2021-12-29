import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

// ignore: use_key_in_widget_constructors
class Generate extends StatefulWidget {
  @override
  _GenerateState createState() => _GenerateState();
}

class _GenerateState extends State<Generate> {
  String qrData = "http://github.com/shahkar-uzair";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("Generate"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            QrImage(data: qrData),
            const SizedBox(height: 10.0),
            const Text(
              "Get your QrCode/Link your Data to the qrCode",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter Text",
              ),
              controller: qrText,
            ),
            const SizedBox(
              height: 10.0,
            ),
            // ignore: deprecated_member_use
            FlatButton(
              child: const Text(
                "Generate QR Code",
                style: TextStyle(
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
              padding: const EdgeInsets.all(15.0),
              onPressed: () {
                if (qrText.text.isEmpty) {
                  setState(() {
                    qrData = "http://flutter.dev";
                  });
                } else {
                  qrData = qrText.text;
                }
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: const BorderSide(color: Colors.black, width: 4.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}

final qrText = TextEditingController();
