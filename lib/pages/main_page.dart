import 'package:barcode_poc/pages/bc_scan_page.dart';
import 'package:barcode_poc/pages/dashboard_page.dart';
import 'package:barcode_poc/widgets/main_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'ml_scan_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> _widgetOptions = [
    DashboardPage(),
    BCScanPage(),
    MLScanPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Barcode POC"),
        centerTitle: true,
      ),
      bottomNavigationBar: MainBottomNavigationBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Container(
            width: _width,
            child: _widgetOptions[1],
          ),
        ),
      ),
    );
  }
}
