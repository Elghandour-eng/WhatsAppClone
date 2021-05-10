import 'package:flutter/material.dart';
import 'package:wahtsappclone/Screens/homeScreen.dart';
import 'package:wahtsappclone/Screens/slashScreen.dart';

void main()
{
  runApp(WhatsApp());
}

class WhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.id,
      routes:
      {
        SplashScreen.id:(context)=>SplashScreen(),
        HomeScreen.id:(context)=>HomeScreen()
      },
    );
  }
}
