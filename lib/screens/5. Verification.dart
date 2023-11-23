// OTP Verification Page
import 'package:blood_app/screens/6. Details.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Importing the services.dart package
import '../widgets/FABR.dart'; // Importing the FABR widget
import '../widgets/text.dart'; // Importing the custom text widget
import '4. Login.dart';

// Otp widget
class Otp extends StatelessWidget {
  const Otp({Key? key}) : super(key: key); // Constructor for the Otp widget

  // Function for handling resend OTP action
  void onResendPressed() {
    // Handle resend OTP action here
  }

  // Function for handling number press action
  void onNumberPressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PhoneNo()), // Navigating to the PhoneNo page
    );
  }

  @override
  Widget build(BuildContext context) {
    // Getting the screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Building the scaffold
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage('lib/image/Group 1.png')), // Displaying an image from the asset
            SizedBox(height: screenHeight * 0.050), // Setting the height of the sized box based on the screen height
            const Text(
              'OTP Verification', // Displaying text
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: screenHeight * 0.032), // Setting the height of the sized box based on the screen height
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Rich text with clickable phone number
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      color: Color(0xFF727272),
                      fontFamily: 'Montserrat',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      const TextSpan(
                        text: 'Enter the OTP sent to ',
                      ),
                      TextSpan(
                        text: '+91 9603265469 ', // Displaying the phone number
                        children: const [
                          WidgetSpan(
                            child: Icon(
                              Icons.create_outlined, // Displaying an icon
                              size: 18, // Setting icon size
                            ),
                          ),
                        ],
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            onNumberPressed(context); // Calling the number press action
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.024), // Setting the height of the sized box based on the screen height
            // Centered OTP input field with 4 lines
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 4; i++)
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.01), // Adding padding
                    child: SizedBox(
                      width: screenWidth * 0.080, // Setting width
                      child: TextField(
                        textAlign: TextAlign.center, // Centering the text inside TextField
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black87),
                          ),
                        ),
                        keyboardType: TextInputType.number, // Setting the keyboard type to number
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1), // Limiting the input to 1 character
                        ],
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(height: screenHeight * 0.024), // Setting the height of the sized box based on the screen height
            // Rich text with clickable 'Resend'
            RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                ),
                children: <TextSpan>[
                  const TextSpan(
                    text: 'Didn’t receive OTP? ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFCCCCCC),
                    ),
                  ),
                  TextSpan(
                    text: 'Resend', // Displaying the 'Resend' text
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFE91B1E),
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = onResendPressed, // Calling the resend action
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.032), // Setting the height of the sized box based on the screen height
            FABR(
              // Using the FABR widget
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyDatePickerWidget()), // Navigating to the MyDatePickerWidget page
                );
              },
              ButtonText: 'Verify', // Setting the text for the FABR button
            ),
            SizedBox(height: screenHeight * 0.042), // Setting the height of the sized box based on the screen height
            const text(), // Displaying custom text widget
          ],
        ),
      ),
    );
  }
}
