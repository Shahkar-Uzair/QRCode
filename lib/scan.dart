import 'package:flutter/material.dart';
import 'package:barcode_scan2/barcode_scan2.dart';
// import 'package:barcode_scan/barcode_scan.dart';

class Scan extends StatefulWidget {
  const Scan({Key? key}) : super(key: key);

  @override
  _ScanState createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  String qrResult = "Not yet Scanned";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("Scanner"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // ignore: prefer_const_constructors
            Text(
              "RESULT",
              // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              qrResult,
              textAlign: TextAlign.center,
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 20.0,
            ),
            // ignore: deprecated_member_use
            FlatButton(
              padding: const EdgeInsets.all(20.0),
              onPressed: () async {
                // ignore: non_constant_identifier_names
                String ScanCode = (await BarcodeScanner.scan()) as String;
                setState(() {
                  qrResult = ScanCode;
                });
              },
              child: const Text('Tap to Scan',
                  style: TextStyle(fontSize: 22.0, fontStyle: FontStyle.italic),
                  textAlign: TextAlign.center),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: const BorderSide(color: Colors.amber, width: 5.0),
              ),
              // ignore: prefer_const_constructors
            ),
          ],
        ),
      ),
    );
  }
}
