import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:e_religious_book/screens/colors.dart';
import 'package:e_religious_book/screens/english.dart';
import 'package:e_religious_book/screens/hindi.dart';
import 'package:e_religious_book/screens/nepali.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavMenu extends StatefulWidget {
  const NavMenu({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<NavMenu> createState() => _NavMenuState();
}

class _NavMenuState extends State<NavMenu> {
  int currentIndex = 0;
  List<Widget> _listPages = [Neplai(), English(), Hindi()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listPages[currentIndex],
      bottomNavigationBar: BottomNavyBar(
          selectedIndex: currentIndex,
          showElevation: true,
          itemCornerRadius: 8,
          curve: Curves.easeInBack,
          onItemSelected: (index) => setState(() {
                currentIndex = index;
              }),
          items: [
            BottomNavyBarItem(
              icon: FaIcon(
                FontAwesomeIcons.n,
              ),
              title: Text('Neplai'),
              activeColor: primary,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: FaIcon(FontAwesomeIcons.e),
              title: Text('English'),
              activeColor: Color.fromARGB(255, 100, 80, 219),
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: FaIcon(FontAwesomeIcons.h),
              title: Text(
                'Hindi',
              ),
              activeColor: Color.fromARGB(255, 9, 79, 107),
              textAlign: TextAlign.center,
            ),
          ]),
    );
  }
}
