import 'package:e_religious_book/screens/homepage.dart';
import 'package:e_religious_book/screens/nav_menubar.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(
      milliseconds: 1500,
    ));
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (contex) => NavMenu(
                  title: '',
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/om.png'))),
      )),
    );
  }
}
