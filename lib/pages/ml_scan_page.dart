import 'dart:io';

import 'package:barcode_poc/widgets/custom_raised_button.dart';
import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../widgets/padded_bodytext.dart';

class MLScanPage extends StatefulWidget {
  @override
  _MLScanPageState createState() => _MLScanPageState();
}

class _MLScanPageState extends State<MLScanPage> {
  final picker = ImagePicker();

  File _pickedImage;

  String text = "";

  bool imageLoaded;

  final BarcodeDetector barcodeDetector =
      FirebaseVision.instance.barcodeDetector();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "firebase_ml_vision:\n^0.10.0",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline3,
              ),
              Divider(),
              Text(
                "image_picker:\n^0.6.7+21",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline3,
              ),
              Divider(),
              PaddedBodyText(
                  text:
                      "Take a photo and use Machine Learning Vision Detector to identify a barcode in the image file."),
              CustomRaisedButton(
                text: "Scan ML Vision",
                icon: Icons.camera_alt,
                onPressed: () => _scan(),
              ),
              PaddedBodyText(
                text: "Raw Result:",
              ),
              PaddedBodyText(text: text),
            ],
          ),
        ),
      ),
    );
  }

  _scan() async {
    //pegar a imagem pela camera
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    if (pickedFile == null) {
      return;
    }

    //pegar o arquivo pelo path e criar a visionImage
    _pickedImage = File(pickedFile.path);
    final FirebaseVisionImage visionImage =
        FirebaseVisionImage.fromFile(_pickedImage);

    //processar imagem
    final List<Barcode> barcodes =
        await barcodeDetector.detectInImage(visionImage);

    //extrair o conteudo
    text = "";
    for (Barcode barcode in barcodes) {
      final String rawValue = barcode.rawValue;
      final BarcodeValueType valueType = barcode.valueType;
      setState(() {
        text += "\nRawValue: $rawValue\nType: $valueType";
      });
    }

    //fechar detector
    barcodeDetector.close();
  }
}
