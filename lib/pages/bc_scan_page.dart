import 'package:barcode_poc/widgets/padding_bodytext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class BCScanPage extends StatefulWidget {
  @override
  _BCScanPageState createState() => _BCScanPageState();
}

class _BCScanPageState extends State<BCScanPage> {
  String result = "";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            PaddingBodyText(
                text:
                    "Both scans read QR and Barcode. If scan is canceled, returns -1"),
            PaddingBodyText(text: "Click to start scanning BARCODE overlay:"),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                color: Theme.of(context).primaryColor,
                textColor: Theme.of(context).textTheme.bodyText2.color,
                onPressed: () => _scan(ScanMode.BARCODE),
                child: Text("Scan".toUpperCase()),
              ),
            ),
            PaddingBodyText(text: "Click to start scanning QRCODE overlay:"),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                color: Theme.of(context).primaryColor,
                textColor: Theme.of(context).textTheme.bodyText2.color,
                onPressed: () => _scan(ScanMode.QR),
                child: Text("Scan".toUpperCase()),
              ),
            ),
            PaddingBodyText(text: "Raw Result:"),
            PaddingBodyText(text: result),
          ],
        ),
      ),
    );
  }

  _scan(ScanMode scanMode) async {
    String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        "#FF0000", "Cancelar", true, ScanMode.BARCODE);

    setState(() {
      result = barcodeScanRes;
    });
  }
}
