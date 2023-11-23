//Tour Page 2
import 'package:blood_app/widgets/FAB.dart';
import 'package:flutter/material.dart';
import 'package:blood_app/screens/3. Tour3.dart';
import '../widgets/text.dart';
import '1. Tour1.dart'; // Import FirstPage for navigation

// SecondPage widget
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Getting the screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Building the scaffold
    return Scaffold(
      body: Center(
        child: Dismissible(
          // Dismissible widget to enable swipe dismissal
          key: const Key('dismissKey'), // Setting a unique key for the Dismissible widget
          direction: DismissDirection.horizontal, // Setting the direction for dismissal
          onDismissed: (DismissDirection direction) {
            if (direction == DismissDirection.endToStart) {
              // Navigating to the ThirdPage when swiped from right to left
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                  const ThirdPage(), // Navigating to the ThirdPage
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    const begin = Offset(1.0, 0.0); // Setting the initial offset
                    const end = Offset.zero; // Setting the final offset
                    const curve = Curves.easeInOutQuart; // Setting the transition curve

                    var tween =
                    Tween(begin: begin, end: end).chain(CurveTween(curve: curve)); // Creating a tween for animation

                    var offsetAnimation = animation.drive(tween); // Driving the animation with the tween

                    return SlideTransition(
                      position: offsetAnimation, // Applying the slide transition with the offsetAnimation
                      child: child,
                    );
                  },
                ),
              );
            } else if (direction == DismissDirection.startToEnd) {
              // Navigating to the FirstPage when swiped from left to right
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                  const FirstPage(), // Navigating to the FirstPage
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    const begin = Offset(-1.0, 0.0); // Setting the initial offset
                    const end = Offset.zero; // Setting the final offset
                    const curve = Curves.easeInOutQuart; // Setting the transition curve

                    var tween =
                    Tween(begin: begin, end: end).chain(CurveTween(curve: curve)); // Creating a tween for animation

                    var offsetAnimation = animation.drive(tween); // Driving the animation with the tween

                    return SlideTransition(
                      position: offsetAnimation, // Applying the slide transition with the offsetAnimation
                      child: child,
                    );
                  },
                ),
              );
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.048)), // Setting horizontal padding based on the screen width
              const Image(image: AssetImage('lib/image/pana2.png')), // Displaying an image from the asset
              SizedBox(height: screenHeight * 0.066), // Setting the height of the sized box based on the screen height
              const Text(
                // Displaying text
                'Your generous blood donation can be a \n lifeline for those in need, providing hope \n and health to those facing medical \n challenges.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF727272), // Setting text color
                ),
              ),
              SizedBox(height: screenHeight * 0.042), // Setting the height of the sized box based on the screen height
              const Image(image: AssetImage('lib/image/2.png')), // Displaying an image from the asset
              SizedBox(height: screenHeight * 0.042), // Setting the height of the sized box based on the screen height
              const text(), // Displaying custom text widget
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 30,
        height: 30,
        child: FAB(
          onPressed: () {
            // Navigating to the ThirdPage on FAB click
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ThirdPage()), // Navigating to the ThirdPage
            );
          },
          backgroundColor: const Color(0xFFDE0A0A), // Setting the background color of the FAB
          icon: Icons.arrow_forward, // Setting the icon for the FAB
          size: 18.0, // Setting the size of the FAB
        ),
      ),
    );
  }
}
