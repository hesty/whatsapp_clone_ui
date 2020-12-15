import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:whatsapp_clone_ui/screens/main_screen.dart';
class SplashScreens extends StatefulWidget {
  @override
  _SplashScreensState createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SplashScreen(
          seconds:3,
          navigateAfterSeconds: MainScreen(),
          image: new Image.network(
              'https://www.freepnglogos.com/uploads/whatsapp-logo-light-green-png-0.png'),
          photoSize: 120,
          backgroundColor: Colors.white,
          useLoader: false,
        ),
      ],
    );

  }
}
