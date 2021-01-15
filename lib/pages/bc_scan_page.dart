import 'package:barcode_poc/widgets/custom_raised_button.dart';
import 'package:barcode_poc/widgets/icon_button_label.dart';
import 'package:barcode_poc/widgets/padded_bodytext.dart';
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
            Text(
              "flutter_barcode_scanner:\n^1.0.2",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline3,
            ),
            Divider(),
            PaddedBodyText(
                text:
                    "Ambas os botões podem ler QRCodes e Barcodes. Se a leitura for cancelada, retorna -1."),
            PaddedBodyText(text: "Clique para começar a leitura (BARCODE overlay)"),
            CustomRaisedButton(
              text: "Scan",
              icon: Icons.camera_alt,
              onPressed: () => _scan(ScanMode.BARCODE),
            ),
            PaddedBodyText(text: "Clique para começar a leitura (QRCODE overlay)"),
            CustomRaisedButton(
              text: "Scan",
              icon: Icons.camera_alt,
              onPressed: () => _scan(ScanMode.QR),
            ),
            PaddedBodyText(text: "Raw Result:"),
            PaddedBodyText(text: result),
          ],
        ),
      ),
    );
  }

  _scan(ScanMode scanMode) async {
    String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        "#FF0000", "Cancelar", true, scanMode);

    setState(() {
      result = barcodeScanRes;
    });
  }
}
