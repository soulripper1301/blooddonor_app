// Completed Requests Pages
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// Importing necessary custom widgets and screens
import '../widgets/bottomappbar.dart';
import '../widgets/floatingactionbutton.dart';
import '14. YourRequests.dart';
import '17. Feedback.dart';
// Defining a StatelessWidget named 'completed'
class completed extends StatelessWidget {
  const completed({super.key}); // Constructor for the 'completed' class

  // Build method that returns the UI structure for the 'completed' screen
  @override
  Widget build(BuildContext context) {
    // Scaffold widget for basic page structure
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          // Stack for layering multiple widgets
          const Flex(
            direction: Axis.horizontal, // Direction of the flex widget
            children: [
              Expanded(
                // Widget to fill the available space in the flex container
                child: Image(
                  // Image widget to display an image
                  image: AssetImage('lib/image/back2.png'), // Image source
                  fit: BoxFit.cover, // How the image should be inscribed into the space
                ),
              ),
            ],
          ),
          // Column for vertical arrangement of widgets
          Column(
            children: [
              // SizedBox for adding space between widgets
              const SizedBox(width: 20, height: 69,),
              // Row for horizontal arrangement of widgets
              Row(
                children: [
                  // IconButton for creating a clickable icon
                  IconButton(
                    onPressed: () {
                      // Navigation to another screen on icon button press
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const yourrequest()), // Navigating to 'yourrequest' screen
                      );
                    },
                    icon: const Icon(Icons.arrow_back_ios_new, // Icon for the button
                      color: Colors.white, // Color of the icon
                    ),
                  ),
                  const SizedBox(width: 16), // Adding space between widgets
                  const Text('Your Requests', // Text widget to display text
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                    ),
                  ),
                   SizedBox(width: screenWidth * 0.280), // Adding space between widgets
                  // OutlinedButton for creating a button with an outline
                  OutlinedButton(
                    onPressed: () {
                      showMenu(
                        context: context,
                        position: const RelativeRect.fromLTRB(100, 130, 0, 0), // Adjust the position as per your requirement
                        items: [
                          PopupMenuItem(
                            value: 1,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const yourrequest()),
                                );
                              },
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: Color(0xFF299703),
                                    size: 5,
                                  ),
                                  Text(
                                    'Active',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Montserrat',
                                      fontSize: 12,
                                      color: Color(0xFF404040),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const PopupMenuItem(
                            value: 2,
                            child: Row(
                              children: [
                                Icon(Icons.circle,
                                  color: Color(0xFFD9D9D9),
                                  size: 5,
                                ),
                                Text('InActive',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    color: Color(0xFF404040),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const PopupMenuItem(
                            value: 3,
                            child: Row(
                              children: [
                                Icon(Icons.circle,
                                  color: Color(0xFFFFAF65),
                                  size: 5,
                                ),
                                Text('In Progress',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    color: Color(0xFF404040),
                                  ),
                                )
                              ],
                            ),
                          ),
                          PopupMenuItem(
                            value: 4,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const completed()),
                                );
                              },
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: Color(0xFF428BCA),
                                    size: 5,
                                  ),
                                  Text(
                                    'Completed',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Montserrat',
                                      fontSize: 12,
                                      color: Color(0xFF404040),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // Add more PopupMenuItems as needed
                        ],
                      );
                    },
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        const BorderSide(color: Colors.transparent,
                            width: 2), // Setting the border style of the button
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.transparent), // Setting the background color
                    ),
                    child: const Image(image: AssetImage(
                        'lib/image/dropdown.png'),
                    ),
                    // Adding an image to the button
                  ),
                ],
              ),
               SizedBox(height: screenHeight * 0.014), // Adding space between widgets
              // Container widget for holding other widgets
              SizedBox(
                height: screenHeight * 0.770, // Setting the height of the container
                child: SingleChildScrollView(
                  // SingleChildScrollView for making the content scrollable
                  scrollDirection: Axis.vertical, // Setting the scroll direction
                  child: Column(
                    children: <Widget>[
                      // Widgets inside the SingleChildScrollView
                      Container(
                        // Container for wrapping content
                        width: 335, // Setting the width of the container
                        height: 172, // Setting the height of the container
                        decoration: BoxDecoration(
                          // Decoration for the container
                          borderRadius: BorderRadius.circular(20), // Setting border radius
                          border: Border.all(
                              color: const Color(0xFFDBDBDB), width: 1),
                          // Setting border properties
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // Aligning the children at the center
                          children: [
                            const SizedBox(height: 16), // Adding space between widgets
                            Row(
                              children: [
                                const SizedBox(width: 12,), // Adding space between widgets
                                Container(
                                  width: 79,
                                  height: 68,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xFFDE0A0A),
                                  ),
                                  alignment: Alignment.center,
                                  // Aligning the child at the center
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    // Aligning text to the center
                                    text: const TextSpan(
                                      style: TextStyle(),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: '8th',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\nOCT',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\n2023',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 17), // Adding space between widgets
                                RichText(
                                  // RichText widget for displaying styled text
                                  text: const TextSpan(
                                    style: TextStyle(
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(text: 'Sohan', // Text content
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            color: Colors.black
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\n2 Units (Bloods) \nAIIMS Hospital, Ansari Nagar , \nNoida, Uttar Pradesh',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 10,
                                            color: Color(0xFF727272)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Column(
                                  children: [
                                    // Column widget for vertical arrangement
                                    Row(
                                      children: [
                                        // Row for horizontal arrangement of widgets
                                        Icon(Icons.circle,
                                          size: 5,
                                          color: Color(0xFF428BCA),
                                        ), // Icon widget
                                        Text('Completed', // Text widget
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                    // Image widget for displaying an image
                                    Image(
                                      image: AssetImage(
                                          'lib/image/bloodinfo.png'), // Image source
                                      width: 24, // Setting the width of the image
                                      height: 24, // Setting the height of the image
                                    ),
                                    // Icon widget for displaying an icon
                                    Icon(CupertinoIcons.bell,
                                      size: 16, // Setting the size of the icon
                                      color: Colors.black, // Setting the color of the icon
                                    ),
                                    Icon(Icons.share_outlined,
                                      size: 16, // Setting the size of the icon
                                      color: Colors.black, // Setting the color of the icon
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 20), // Adding space between widgets
                            GestureDetector(
                              // GestureDetector for detecting gestures
                              onTap: () {
                                // Navigating to the 'feedback' screen on tap
                                Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) =>  feedback()),);
                              },
                              child: // Child widget for the GestureDetector
                              const Padding(padding: EdgeInsets.only(left: 12),
                                child: Row(
                                  children: [
                                    Text('Rate', // Text widget to display text
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF727272),
                                      ),
                                    ),
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20), // Adding space between widgets
                      Container(
                        // Container for wrapping content
                        width: 335, // Setting the width of the container
                        height: 172, // Setting the height of the container
                        decoration: BoxDecoration(
                          // Decoration for the container
                          borderRadius: BorderRadius.circular(20), // Setting border radius
                          border: Border.all(
                              color: const Color(0xFFDBDBDB), width: 1),
                          // Setting border properties
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // Aligning the children at the center
                          children: [
                            const SizedBox(height: 16), // Adding space between widgets
                            Row(
                              children: [
                                const SizedBox(width: 12,), // Adding space between widgets
                                Container(
                                  width: 79,
                                  height: 68,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xFFDE0A0A),
                                  ),
                                  alignment: Alignment.center,
                                  // Aligning the child at the center
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    // Aligning text to the center
                                    text: const TextSpan(
                                      style: TextStyle(),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: '8th',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\nOCT',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\n2023',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 17), // Adding space between widgets
                                RichText(
                                  // RichText widget for displaying styled text
                                  text: const TextSpan(
                                    style: TextStyle(
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(text: 'Sohan', // Text content
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            color: Colors.black
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\n2 Units (Bloods) \nAIIMS Hospital, Ansari Nagar , \nNoida, Uttar Pradesh',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 10,
                                            color: Color(0xFF727272)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Column(
                                  children: [
                                    // Column widget for vertical arrangement
                                    Row(
                                      children: [
                                        // Row for horizontal arrangement of widgets
                                        Icon(Icons.circle,
                                          size: 5,
                                          color: Color(0xFF428BCA),
                                        ), // Icon widget
                                        Text('Completed', // Text widget
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                    // Image widget for displaying an image
                                    Image(
                                      image: AssetImage(
                                          'lib/image/bloodinfo.png'), // Image source
                                      width: 24, // Setting the width of the image
                                      height: 24, // Setting the height of the image
                                    ),
                                    // Icon widget for displaying an icon
                                    Icon(CupertinoIcons.bell,
                                      size: 16, // Setting the size of the icon
                                      color: Colors.black, // Setting the color of the icon
                                    ),
                                    Icon(Icons.share_outlined,
                                      size: 16, // Setting the size of the icon
                                      color: Colors.black, // Setting the color of the icon
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 20), // Adding space between widgets
                            GestureDetector(
                              // GestureDetector for detecting gestures
                              onTap: () {
                                // Navigating to the 'feedback' screen on tap
                                Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) => feedback()),);
                              },
                              child: // Child widget for the GestureDetector
                              const Padding(padding: EdgeInsets.only(left: 12),
                                child: Row(
                                  children: [
                                    Text('Rate', // Text widget to display text
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF727272),
                                      ),
                                    ),
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        // Container for wrapping content
                        width: 335, // Setting the width of the container
                        height: 172, // Setting the height of the container
                        decoration: BoxDecoration(
                          // Decoration for the container
                          borderRadius: BorderRadius.circular(20), // Setting border radius
                          border: Border.all(
                              color: const Color(0xFFDBDBDB), width: 1),
                          // Setting border properties
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // Aligning the children at the center
                          children: [
                            const SizedBox(height: 16), // Adding space between widgets
                            Row(
                              children: [
                                const SizedBox(width: 12,), // Adding space between widgets
                                Container(
                                  width: 79,
                                  height: 68,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xFFDE0A0A),
                                  ),
                                  alignment: Alignment.center,
                                  // Aligning the child at the center
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    // Aligning text to the center
                                    text: const TextSpan(
                                      style: TextStyle(),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: '8th',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\nOCT',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\n2023',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 17), // Adding space between widgets
                                RichText(
                                  // RichText widget for displaying styled text
                                  text: const TextSpan(
                                    style: TextStyle(
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(text: 'Sohan', // Text content
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            color: Colors.black
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\n2 Units (Bloods) \nAIIMS Hospital, Ansari Nagar , \nNoida, Uttar Pradesh',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 10,
                                            color: Color(0xFF727272)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Column(
                                  children: [
                                    // Column widget for vertical arrangement
                                    Row(
                                      children: [
                                        // Row for horizontal arrangement of widgets
                                        Icon(Icons.circle,
                                          size: 5,
                                          color: Color(0xFF428BCA),
                                        ), // Icon widget
                                        Text('Completed', // Text widget
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                    // Image widget for displaying an image
                                    Image(
                                      image: AssetImage(
                                          'lib/image/bloodinfo.png'), // Image source
                                      width: 24, // Setting the width of the image
                                      height: 24, // Setting the height of the image
                                    ),
                                    // Icon widget for displaying an icon
                                    Icon(CupertinoIcons.bell,
                                      size: 16, // Setting the size of the icon
                                      color: Colors.black, // Setting the color of the icon
                                    ),
                                    Icon(Icons.share_outlined,
                                      size: 16, // Setting the size of the icon
                                      color: Colors.black, // Setting the color of the icon
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 20), // Adding space between widgets
                            GestureDetector(
                              // GestureDetector for detecting gestures
                              onTap: () {
                                // Navigating to the 'feedback' screen on tap
                                Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) =>  feedback()),);
                              },
                              child: // Child widget for the GestureDetector
                              const Padding(padding: EdgeInsets.only(left: 12),
                                child: Row(
                                  children: [
                                    Text('Rate', // Text widget to display text
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF727272),
                                      ),
                                    ),
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        // Container for wrapping content
                        width: 335, // Setting the width of the container
                        height: 172, // Setting the height of the container
                        decoration: BoxDecoration(
                          // Decoration for the container
                          borderRadius: BorderRadius.circular(20), // Setting border radius
                          border: Border.all(
                              color: const Color(0xFFDBDBDB), width: 1),
                          // Setting border properties
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // Aligning the children at the center
                          children: [
                            const SizedBox(height: 16), // Adding space between widgets
                            Row(
                              children: [
                                const SizedBox(width: 12,), // Adding space between widgets
                                Container(
                                  width: 79,
                                  height: 68,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xFFDE0A0A),
                                  ),
                                  alignment: Alignment.center,
                                  // Aligning the child at the center
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    // Aligning text to the center
                                    text: const TextSpan(
                                      style: TextStyle(),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: '8th',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\nOCT',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\n2023',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 17), // Adding space between widgets
                                RichText(
                                  // RichText widget for displaying styled text
                                  text: const TextSpan(
                                    style: TextStyle(
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(text: 'Sohan', // Text content
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            color: Colors.black
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\n2 Units (Bloods) \nAIIMS Hospital, Ansari Nagar , \nNoida, Uttar Pradesh',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 10,
                                            color: Color(0xFF727272)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Column(
                                  children: [
                                    // Column widget for vertical arrangement
                                    Row(
                                      children: [
                                        // Row for horizontal arrangement of widgets
                                        Icon(Icons.circle,
                                          size: 5,
                                          color: Color(0xFF428BCA),
                                        ), // Icon widget
                                        Text('Completed', // Text widget
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                    // Image widget for displaying an image
                                    Image(
                                      image: AssetImage(
                                          'lib/image/bloodinfo.png'), // Image source
                                      width: 24, // Setting the width of the image
                                      height: 24, // Setting the height of the image
                                    ),
                                    // Icon widget for displaying an icon
                                    Icon(CupertinoIcons.bell,
                                      size: 16, // Setting the size of the icon
                                      color: Colors.black, // Setting the color of the icon
                                    ),
                                    Icon(Icons.share_outlined,
                                      size: 16, // Setting the size of the icon
                                      color: Colors.black, // Setting the color of the icon
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 20), // Adding space between widgets
                            GestureDetector(
                              // GestureDetector for detecting gestures
                              onTap: () {
                                // Navigating to the 'feedback' screen on tap
                                Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) =>  feedback()),);
                              },
                              child: // Child widget for the GestureDetector
                              const Padding(padding: EdgeInsets.only(left: 12),
                                child: Row(
                                  children: [
                                    Text('Rate', // Text widget to display text
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF727272),
                                      ),
                                    ),
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        // Container for wrapping content
                        width: 335, // Setting the width of the container
                        height: 172, // Setting the height of the container
                        decoration: BoxDecoration(
                          // Decoration for the container
                          borderRadius: BorderRadius.circular(20), // Setting border radius
                          border: Border.all(
                              color: const Color(0xFFDBDBDB), width: 1),
                          // Setting border properties
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // Aligning the children at the center
                          children: [
                            const SizedBox(height: 16), // Adding space between widgets
                            Row(
                              children: [
                                const SizedBox(width: 12,), // Adding space between widgets
                                Container(
                                  width: 79,
                                  height: 68,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xFFDE0A0A),
                                  ),
                                  alignment: Alignment.center,
                                  // Aligning the child at the center
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    // Aligning text to the center
                                    text: const TextSpan(
                                      style: TextStyle(),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: '8th',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\nOCT',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\n2023',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 17), // Adding space between widgets
                                RichText(
                                  // RichText widget for displaying styled text
                                  text: const TextSpan(
                                    style: TextStyle(
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(text: 'Sohan', // Text content
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            color: Colors.black
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\n2 Units (Bloods) \nAIIMS Hospital, Ansari Nagar , \nNoida, Uttar Pradesh',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 10,
                                            color: Color(0xFF727272)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Column(
                                  children: [
                                    // Column widget for vertical arrangement
                                    Row(
                                      children: [
                                        // Row for horizontal arrangement of widgets
                                        Icon(Icons.circle,
                                          size: 5,
                                          color: Color(0xFF428BCA),
                                        ), // Icon widget
                                        Text('Completed', // Text widget
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                    // Image widget for displaying an image
                                    Image(
                                      image: AssetImage(
                                          'lib/image/bloodinfo.png'), // Image source
                                      width: 24, // Setting the width of the image
                                      height: 24, // Setting the height of the image
                                    ),
                                    // Icon widget for displaying an icon
                                    Icon(CupertinoIcons.bell,
                                      size: 16, // Setting the size of the icon
                                      color: Colors.black, // Setting the color of the icon
                                    ),
                                    Icon(Icons.share_outlined,
                                      size: 16, // Setting the size of the icon
                                      color: Colors.black, // Setting the color of the icon
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 20), // Adding space between widgets
                            GestureDetector(
                              // GestureDetector for detecting gestures
                              onTap: () {
                                // Navigating to the 'feedback' screen on tap
                                Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) =>  feedback()),);
                              },
                              child: // Child widget for the GestureDetector
                              const Padding(padding: EdgeInsets.only(left: 12),
                                child: Row(
                                  children: [
                                    Text('Rate', // Text widget to display text
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF727272),
                                      ),
                                    ),
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        // Container for wrapping content
                        width: 335, // Setting the width of the container
                        height: 172, // Setting the height of the container
                        decoration: BoxDecoration(
                          // Decoration for the container
                          borderRadius: BorderRadius.circular(20), // Setting border radius
                          border: Border.all(
                              color: const Color(0xFFDBDBDB), width: 1),
                          // Setting border properties
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // Aligning the children at the center
                          children: [
                            const SizedBox(height: 16), // Adding space between widgets
                            Row(
                              children: [
                                const SizedBox(width: 12,), // Adding space between widgets
                                Container(
                                  width: 79,
                                  height: 68,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xFFDE0A0A),
                                  ),
                                  alignment: Alignment.center,
                                  // Aligning the child at the center
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    // Aligning text to the center
                                    text: const TextSpan(
                                      style: TextStyle(),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: '8th',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\nOCT',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\n2023',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 17), // Adding space between widgets
                                RichText(
                                  // RichText widget for displaying styled text
                                  text: const TextSpan(
                                    style: TextStyle(
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(text: 'Sohan', // Text content
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            color: Colors.black
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\n2 Units (Bloods) \nAIIMS Hospital, Ansari Nagar , \nNoida, Uttar Pradesh',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 10,
                                            color: Color(0xFF727272)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Column(
                                  children: [
                                    // Column widget for vertical arrangement
                                    Row(
                                      children: [
                                        // Row for horizontal arrangement of widgets
                                        Icon(Icons.circle,
                                          size: 5,
                                          color: Color(0xFF428BCA),
                                        ), // Icon widget
                                        Text('Completed', // Text widget
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                    // Image widget for displaying an image
                                    Image(
                                      image: AssetImage(
                                          'lib/image/bloodinfo.png'), // Image source
                                      width: 24, // Setting the width of the image
                                      height: 24, // Setting the height of the image
                                    ),
                                    // Icon widget for displaying an icon
                                    Icon(CupertinoIcons.bell,
                                      size: 16, // Setting the size of the icon
                                      color: Colors.black, // Setting the color of the icon
                                    ),
                                    Icon(Icons.share_outlined,
                                      size: 16, // Setting the size of the icon
                                      color: Colors.black, // Setting the color of the icon
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 20), // Adding space between widgets
                            GestureDetector(
                              // GestureDetector for detecting gestures
                              onTap: () {
                                // Navigating to the 'feedback' screen on tap
                                Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) =>  feedback()),);
                              },
                              child: // Child widget for the GestureDetector
                              const Padding(padding: EdgeInsets.only(left: 12),
                                child: Row(
                                  children: [
                                    Text('Rate', // Text widget to display text
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF727272),
                                      ),
                                    ),
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        // Container for wrapping content
                        width: 335, // Setting the width of the container
                        height: 172, // Setting the height of the container
                        decoration: BoxDecoration(
                          // Decoration for the container
                          borderRadius: BorderRadius.circular(20), // Setting border radius
                          border: Border.all(
                              color: const Color(0xFFDBDBDB), width: 1),
                          // Setting border properties
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // Aligning the children at the center
                          children: [
                            const SizedBox(height: 16), // Adding space between widgets
                            Row(
                              children: [
                                const SizedBox(width: 12,), // Adding space between widgets
                                Container(
                                  width: 79,
                                  height: 68,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xFFDE0A0A),
                                  ),
                                  alignment: Alignment.center,
                                  // Aligning the child at the center
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    // Aligning text to the center
                                    text: const TextSpan(
                                      style: TextStyle(),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: '8th',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\nOCT',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\n2023',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 17), // Adding space between widgets
                                RichText(
                                  // RichText widget for displaying styled text
                                  text: const TextSpan(
                                    style: TextStyle(
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(text: 'Sohan', // Text content
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            color: Colors.black
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\n2 Units (Bloods) \nAIIMS Hospital, Ansari Nagar , \nNoida, Uttar Pradesh',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 10,
                                            color: Color(0xFF727272)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Column(
                                  children: [
                                    // Column widget for vertical arrangement
                                    Row(
                                      children: [
                                        // Row for horizontal arrangement of widgets
                                        Icon(Icons.circle,
                                          size: 5,
                                          color: Color(0xFF428BCA),
                                        ), // Icon widget
                                        Text('Completed', // Text widget
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                    // Image widget for displaying an image
                                    Image(
                                      image: AssetImage(
                                          'lib/image/bloodinfo.png'), // Image source
                                      width: 24, // Setting the width of the image
                                      height: 24, // Setting the height of the image
                                    ),
                                    // Icon widget for displaying an icon
                                    Icon(CupertinoIcons.bell,
                                      size: 16, // Setting the size of the icon
                                      color: Colors.black, // Setting the color of the icon
                                    ),
                                    Icon(Icons.share_outlined,
                                      size: 16, // Setting the size of the icon
                                      color: Colors.black, // Setting the color of the icon
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 20), // Adding space between widgets
                            GestureDetector(
                              // GestureDetector for detecting gestures
                              onTap: () {
                                // Navigating to the 'feedback' screen on tap
                                Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) =>  feedback()),);
                              },
                              child: // Child widget for the GestureDetector
                              const Padding(padding: EdgeInsets.only(left: 12),
                                child: Row(
                                  children: [
                                    Text('Rate', // Text widget to display text
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF727272),
                                      ),
                                    ),
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        // Container for wrapping content
                        width: 335, // Setting the width of the container
                        height: 172, // Setting the height of the container
                        decoration: BoxDecoration(
                          // Decoration for the container
                          borderRadius: BorderRadius.circular(20), // Setting border radius
                          border: Border.all(
                              color: const Color(0xFFDBDBDB), width: 1),
                          // Setting border properties
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // Aligning the children at the center
                          children: [
                            const SizedBox(height: 16), // Adding space between widgets
                            Row(
                              children: [
                                const SizedBox(width: 12,), // Adding space between widgets
                                Container(
                                  width: 79,
                                  height: 68,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xFFDE0A0A),
                                  ),
                                  alignment: Alignment.center,
                                  // Aligning the child at the center
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    // Aligning text to the center
                                    text: const TextSpan(
                                      style: TextStyle(),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: '8th',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\nOCT',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\n2023',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 17), // Adding space between widgets
                                RichText(
                                  // RichText widget for displaying styled text
                                  text: const TextSpan(
                                    style: TextStyle(
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(text: 'Sohan', // Text content
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            color: Colors.black
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\n2 Units (Bloods) \nAIIMS Hospital, Ansari Nagar , \nNoida, Uttar Pradesh',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 10,
                                            color: Color(0xFF727272)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Column(
                                  children: [
                                    // Column widget for vertical arrangement
                                    Row(
                                      children: [
                                        // Row for horizontal arrangement of widgets
                                        Icon(Icons.circle,
                                          size: 5,
                                          color: Color(0xFF428BCA),
                                        ), // Icon widget
                                        Text('Completed', // Text widget
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                    // Image widget for displaying an image
                                    Image(
                                      image: AssetImage(
                                          'lib/image/bloodinfo.png'), // Image source
                                      width: 24, // Setting the width of the image
                                      height: 24, // Setting the height of the image
                                    ),
                                    // Icon widget for displaying an icon
                                    Icon(CupertinoIcons.bell,
                                      size: 16, // Setting the size of the icon
                                      color: Colors.black, // Setting the color of the icon
                                    ),
                                    Icon(Icons.share_outlined,
                                      size: 16, // Setting the size of the icon
                                      color: Colors.black, // Setting the color of the icon
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 20), // Adding space between widgets
                            GestureDetector(
                              // GestureDetector for detecting gestures
                              onTap: () {
                                // Navigating to the 'feedback' screen on tap
                                Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) =>  feedback()),);
                              },
                              child: // Child widget for the GestureDetector
                              const Padding(padding: EdgeInsets.only(left: 12),
                                child: Row(
                                  children: [
                                    Text('Rate', // Text widget to display text
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF727272),
                                      ),
                                    ),
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        // Container for wrapping content
                        width: 335, // Setting the width of the container
                        height: 172, // Setting the height of the container
                        decoration: BoxDecoration(
                          // Decoration for the container
                          borderRadius: BorderRadius.circular(20), // Setting border radius
                          border: Border.all(
                              color: const Color(0xFFDBDBDB), width: 1),
                          // Setting border properties
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // Aligning the children at the center
                          children: [
                            const SizedBox(height: 16), // Adding space between widgets
                            Row(
                              children: [
                                const SizedBox(width: 12,), // Adding space between widgets
                                Container(
                                  width: 79,
                                  height: 68,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xFFDE0A0A),
                                  ),
                                  alignment: Alignment.center,
                                  // Aligning the child at the center
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    // Aligning text to the center
                                    text: const TextSpan(
                                      style: TextStyle(),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: '8th',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\nOCT',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\n2023',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 17), // Adding space between widgets
                                RichText(
                                  // RichText widget for displaying styled text
                                  text: const TextSpan(
                                    style: TextStyle(
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(text: 'Sohan', // Text content
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            color: Colors.black
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\n2 Units (Bloods) \nAIIMS Hospital, Ansari Nagar , \nNoida, Uttar Pradesh',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 10,
                                            color: Color(0xFF727272)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Column(
                                  children: [
                                    // Column widget for vertical arrangement
                                    Row(
                                      children: [
                                        // Row for horizontal arrangement of widgets
                                        Icon(Icons.circle,
                                          size: 5,
                                          color: Color(0xFF428BCA),
                                        ), // Icon widget
                                        Text('Completed', // Text widget
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                    // Image widget for displaying an image
                                    Image(
                                      image: AssetImage(
                                          'lib/image/bloodinfo.png'), // Image source
                                      width: 24, // Setting the width of the image
                                      height: 24, // Setting the height of the image
                                    ),
                                    // Icon widget for displaying an icon
                                    Icon(CupertinoIcons.bell,
                                      size: 16, // Setting the size of the icon
                                      color: Colors.black, // Setting the color of the icon
                                    ),
                                    Icon(Icons.share_outlined,
                                      size: 16, // Setting the size of the icon
                                      color: Colors.black, // Setting the color of the icon
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 20), // Adding space between widgets
                            GestureDetector(
                              // GestureDetector for detecting gestures
                              onTap: () {
                                // Navigating to the 'feedback' screen on tap
                                Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) =>  feedback()),);
                              },
                              child: // Child widget for the GestureDetector
                              const Padding(padding: EdgeInsets.only(left: 12),
                                child: Row(
                                  children: [
                                    Text('Rate', // Text widget to display text
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF727272),
                                      ),
                                    ),
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                    SizedBox(width: 15,), // Adding space between widgets
                                    Icon(Icons.star_border,
                                      size: 16,
                                    ), // Icon widget
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Add more widgets here as needed
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 2), // Adding space between widgets
            ],
          ),
        ],
      ),
      bottomNavigationBar: const appbar(), // Adding a custom bottom app bar
      floatingActionButton: const float(), // Adding a custom floating action button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // Setting the position of the floating action button
    );
  }
}
