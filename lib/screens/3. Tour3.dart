//Tour Page 3
import 'package:blood_app/widgets/FABR.dart';
import 'package:flutter/material.dart';
import '../widgets/text.dart';
import '4. Login.dart';
import '2. Tour2.dart';

// ThirdPage widget
class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Getting the screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Building the scaffold
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Center(
        child:
        Dismissible(
          // Dismissible widget to enable swipe dismissal
          key: const Key('dismissKey'), // Setting a unique key for the Dismissible widget
          direction: DismissDirection.startToEnd, // Setting the direction for dismissal
          onDismissed: (DismissDirection direction) {
            if (direction == DismissDirection.startToEnd) {
              // Navigating to the SecondPage when swiped from left to right
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondPage()), // Navigating to the SecondPage
              );
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.026)), // Setting horizontal padding based on the screen width
              const Image(image: AssetImage('lib/image/pana3.png')), // Displaying an image from the asset
              SizedBox(height: screenHeight * 0.073), // Setting the height of the sized box based on the screen height
              const Text(
                // Displaying text
                'Your contribution can make a significant \n impact on those in need and is a noble \n and life-saving gesture.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Inter',
                  fontSize: 17,
                ),
              ),
              SizedBox(height: screenHeight * 0.047), // Setting the height of the sized box based on the screen height
              const Image(image: AssetImage('lib/image/3.png')), // Displaying an image from the asset
              SizedBox(height: screenHeight * 0.042), // Setting the height of the sized box based on the screen height
              const text(), // Displaying custom text widget
            ],
          ),
        ),
      ),
        SizedBox(height: screenHeight * 0.087),
        FABR(
          onPressed: () {
            // Navigating to the PhoneNo page on FABR click
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PhoneNo()), // Navigating to the PhoneNo page
            );
          },
          ButtonText: 'Continue', // Setting the text for the FABR button
        ),
    ],
      ),
    );
  }
}
