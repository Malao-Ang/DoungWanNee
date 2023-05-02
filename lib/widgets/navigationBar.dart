import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucky_with_you/providers/state.dart';
import 'package:lucky_with_you/screen/account_screen.dart';
import 'package:lucky_with_you/screen/home_screen.dart';
import 'package:lucky_with_you/screen/randomcard_screen.dart';
import 'package:provider/provider.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 1;

  static final List<Widget> _widgetOptions = <Widget>[
    RandomCardScreen(
      selectedType: '',
    ),
    HomeScreen(),
    AccountScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // print(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetOptions[_selectedIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            elevation: 10,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.blueGrey,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: const Color(0xFF526480),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(FluentIcons.star_12_regular),
                activeIcon: Icon(FluentIcons.star_12_filled),
                label: 'Predicted',
              ),
              BottomNavigationBarItem(
                  icon: Icon(FluentIcons.home_12_regular),
                  activeIcon: Icon(FluentIcons.home_12_filled),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(FluentIcons.person_12_regular),
                  activeIcon: Icon(FluentIcons.person_12_filled),
                  label: 'Account'),
            ]));
  }
}
