// Splash Screen

import 'package:blood_app/screens/1.%20Tour1.dart';
import 'package:blood_app/screens/appbar.dart';
import 'package:flutter/material.dart';
// App starting point
void main() {
  runApp(MyApp());
}

// MyApp widget, the root of the application
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Set to false to hide the debug banner
      home: SplashScreen(), // Set the initial screen to the SplashScreen widget
    );
  }
}

// SplashScreen widget to display an introductory screen
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Use Future.delayed to simulate a delay for the splash screen
    Future.delayed(const Duration(seconds: 4), () {
      // Navigate to the next screen
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => FirstPage()));
    });

    return const Scaffold(
      backgroundColor: Color(0xFFDE0A0A), // Set the background color for the splash screen
      body: Center(
        child: Column(
          children:[
            // Logo and App name
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 380,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      //Logo
                      image: AssetImage('lib/image/heart.png'), // Set the path for the image asset
                      width: 40.0, // Set the width of the image
                      height: 40.0, // Set the height of the image
                      color: Colors.white, // Set the color of the image
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // App name
                          Text(
                            'iDonateBlood',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 28.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          ),
                          // App slogan
                          Text(
                            'Save Lives',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              letterSpacing: 8.0
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
