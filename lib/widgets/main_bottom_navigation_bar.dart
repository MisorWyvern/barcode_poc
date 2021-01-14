import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainBottomNavigationBar extends StatefulWidget {
  @override
  _MainBottomNavigationBarState createState() =>
      _MainBottomNavigationBarState();
}

class _MainBottomNavigationBarState extends State<MainBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return BottomNavigationBar(
      backgroundColor: _theme.primaryColor,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.dashboard), label: 'Dashboard'),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/barcode-scan.svg",
              color: _selectedIndex != 1
                  ? _theme.textTheme.bodyText2.color
                  : _theme.accentColor,
            ),
            label: 'BC Scan'),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/barcode-scan.svg",
              color: _selectedIndex != 2
                  ? _theme.textTheme.bodyText2.color
                  : _theme.accentColor,
            ),
            label: 'ML Scan'),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: _theme.accentColor,
      unselectedItemColor: _theme.textTheme.bodyText2.color,
      onTap: _onItemTapped,
    );
  }
}
