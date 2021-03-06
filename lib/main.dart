import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/screens/main_screen.dart';
import 'package:whatsapp_clone_ui/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Clone',
      theme: ThemeData(
        primaryColor: Color(0xff075E54),
        accentColor: Color(0xff25D366)
      ),
      home: SplashScreens(),
    );
  }
}

