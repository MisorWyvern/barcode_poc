import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'package:flutter/material.dart';

class MLScanPage extends StatelessWidget {
  final BarcodeDetector barcodeDetector =
      FirebaseVision.instance.barcodeDetector();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "MLSCANPAGE",
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
