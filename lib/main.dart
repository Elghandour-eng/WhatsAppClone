import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:wahtsappclone/Screens/cameraView.dart';
import 'package:wahtsappclone/Screens/homeScreen.dart';
import 'package:wahtsappclone/Screens/slashScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
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
