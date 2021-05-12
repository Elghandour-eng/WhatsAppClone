import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wahtsappclone/Screens/homeScreen.dart';

class SplashScreen extends StatefulWidget {
  static String id = 'splash';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.popAndPushNamed(context, HomeScreen.id);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Center(
                child: Icon(
              FontAwesomeIcons.whatsapp,
              color: Colors.green,
              size: MediaQuery.of(context).size.height * .15,
            )),
          ],
        ),
      ),
    );
  }
}
