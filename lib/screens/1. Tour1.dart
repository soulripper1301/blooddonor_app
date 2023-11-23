//Tour Page 1
import 'package:flutter/material.dart';
import 'package:blood_app/screens/2. Tour2.dart';
import '../widgets/FAB.dart'; // Importing the FAB widget
import '../widgets/text.dart'; // Importing the custom text widget

// FirstPage widget
class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Getting the screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Building the scaffold
    return Scaffold(
      backgroundColor: Colors.white, // Setting the background color
      body: Center(
        child: Dismissible(
          // Dismissible widget to enable swipe dismissal
          key: const Key('dismissKey'), // Setting a unique key for the Dismissible widget
          direction: DismissDirection.endToStart, // Setting the direction for dismissal
          onDismissed: (_) {
            // Navigating to the SecondPage when dismissed
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                const SecondPage(), // Navigating to the SecondPage
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  const begin = Offset(2.0, 0.0); // Setting the initial offset
                  const end = Offset.zero; // Setting the final offset
                  const curve = Curves.easeInOutQuart; // Setting the transition curve

                  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve)); // Creating a tween for animation

                  var offsetAnimation = animation.drive(tween); // Driving the animation with the tween

                  return SlideTransition(
                    position: offsetAnimation, // Applying the slide transition with the offsetAnimation
                    child: child,
                  );
                },
                transitionDuration: const Duration(milliseconds: 500), // Setting the transition duration
              ),
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(image: AssetImage('lib/image/pana1.png')), // Displaying an image from the asset
              SizedBox(height: screenHeight * 0.059), // Setting the height of the sized box based on the screen height
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.020), // Setting horizontal padding based on the screen width
                child: const Text(
                  // Displaying text
                  'Every day, the generosity of 1000 blood \n donors shines through, saving countless \n lives and bringing hope to those in \n medical need.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Montserrat',
                    color: Color(0xFF727272), // Setting text color
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.042,), // Setting the height of the sized box based on the screen height
              const Image(image: AssetImage('lib/image/1.png')), // Displaying an image from the asset
              SizedBox(height: screenHeight * 0.042,), // Setting the height of the sized box based on the screen height
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.103), // Setting horizontal padding based on the screen width
                child: const text(), // Displaying custom text widget
              )
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 30,
        height: 30,
        child: FAB(
          onPressed: () {
            // Navigating to the SecondPage on FAB click
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                const SecondPage(), // Navigating to the SecondPage
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  const begin = Offset(1.0, 0.0); // Setting the initial offset
                  const end = Offset.zero; // Setting the final offset
                  const curve = Curves.easeInOutQuart; // Setting the transition curve

                  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve)); // Creating a tween for animation

                  var offsetAnimation = animation.drive(tween); // Driving the animation with the tween

                  return SlideTransition(
                    position: offsetAnimation, // Applying the slide transition with the offsetAnimation
                    child: child,
                  );
                },
              ),
            );
          },
          backgroundColor: const Color(0xFFDE0A0A), // Setting the background color of the FAB
          icon: Icons.arrow_forward_sharp, // Setting the icon for the FAB
          size: null, // Setting the size of the FAB
        ),
      ),
    );
  }
}
