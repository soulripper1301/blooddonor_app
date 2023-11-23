// Login Page
import 'package:flutter/material.dart';
import 'package:blood_app/screens/5. Verification.dart';
import '../widgets/FABR.dart'; // Importing the FABR widget
import '../widgets/text.dart'; // Importing the custom text widget

// PhoneNo widget
class PhoneNo extends StatelessWidget {
  const PhoneNo({Key? key}) : super(key: key); // Constructor for PhoneNo widget

  @override
  Widget build(BuildContext context) {
    // Getting the screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Building the scaffold
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF), // Setting the background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage('lib/image/Group 1.png')), // Displaying an image from the asset
            SizedBox(height: screenHeight * 0.050), // Setting the height of the sized box based on the screen height
            const Text(
              // Displaying text
              'Welcome to \n iDonateBlood',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                color: Color(0xFF404040), // Setting text color
              ),
            ),
            SizedBox(height: screenHeight * 0.041), // Setting the height of the sized box based on the screen height
            Stack(
              children: [
                // Creating a stack for the input field and label
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.040,
                    vertical: screenHeight * 0.010,
                  ),
                  child: Container(
                    // Creating a container for the input field
                    width: screenWidth * 0.850,
                    height: screenHeight * 0.060,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.transparent,
                      border: const Border.symmetric(
                        horizontal: BorderSide(
                          width: 1,
                          color: Color(0xFFDBDBDB),
                        ),
                        vertical: BorderSide(
                          width: 1,
                          color: Color(0xFFDBDBDB),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.15,
                    vertical: screenHeight * 0,
                  ),
                  child: Container(
                    // Creating a container for the label
                    width: screenWidth * 0.15,
                    height: screenHeight * 0.03,
                    color: Colors.white,
                    child: const Text(
                      'Mobile', // Displaying the label text
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                        color: Color(0xFF727272), // Setting text color
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.080, vertical: screenHeight * 0.025), // Adjusting button size
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.network(
                          // Displaying an image from a network URL
                          'https://th.bing.com/th/id/OIP.h1NSz4FHs2HQHGo2x1emHAHaEo?w=265&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                          width: 24, // Setting image width
                          height: 15, // Setting image height
                        ),
                        SizedBox(width: screenWidth * 0.005), // Adjusting sized box width
                        const Text(
                          '+91', // Displaying the country code
                          style: TextStyle(
                            color: Color(0xFF727272), // Setting text color
                            fontSize: 16, // Adjusting font size
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Icon(
                          Icons.arrow_drop_down, // Displaying an arrow icon
                          size: 16, // Adjusting icon size
                          color: Color(0xFF727272), // Setting icon color
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.250, vertical: screenHeight * 0.010), // Adjusting padding
                  child: const TextField(
                    // Creating a text field for phone number input
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter Phone No', // Setting the hint text
                    ),
                    keyboardType: TextInputType.number, // Setting the keyboard type to number
                    cursorColor: Color(0xFF727272), // Setting the cursor color
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.024), // Setting the height of the sized box based on the screen height
            const Text(
              // Displaying text
              'We will send you one time \n password (OTP)',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: 'Montserrat',
                fontSize: 16,
                color: Color(0xFFCCCCCC), // Setting text color
              ),
            ),
            SizedBox(height: screenHeight * 0.024), // Setting the height of the sized box based on the screen height
            FABR(
              // Using the FABR widget
              onPressed: () {
                // Navigating to the Otp page on FABR click
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Otp()), // Navigating to the Otp page
                );
              },
              ButtonText: 'Generate OTP', // Setting the text for the FABR button
            ),
            const SizedBox(height: 42), // Setting the height of the sized box
            const text(), // Displaying custom text widget
          ],
        ),
      ),
    );
  }
}
//Need to connect API for entering Phone Number and sending OTP