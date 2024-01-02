import 'package:flutter/material.dart';
import 'selectedseats.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    print('height: ');
    print(height);
    print('w');
    print(width);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SizedBox(
        height: height * 0.1844,
        width: width * 0.3819,
        child: AnimatedSplashScreen(
          backgroundColor: Colors.white,
          splash: Icon(Icons.train,
              color: Colors.deepPurple, size: height * 0.1229),
          nextScreen: const SelectedSeats(),
          splashTransition: SplashTransition.fadeTransition,
          curve: Curves.easeInExpo,
          animationDuration: const Duration(seconds: 1, milliseconds: 500),
        ),
      ),
    );
  }
}
