// Request Id Page
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// Importing necessary custom widgets and screens
import '../widgets/bottomappbar.dart';
import '../widgets/floatingactionbutton.dart';
import '14. YourRequests.dart';

// Defining a StatelessWidget named 'requestid'
class requestid extends StatelessWidget {
  const requestid({super.key}); // Constructor for the 'requestid' class

  // Build method that returns the UI structure for the 'requestid' screen
  @override
  Widget build(BuildContext context) {
    // Scaffold widget for basic page structure
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
                  const Text('Request ID', // Text widget to display text
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40), // Adding space between widgets
              // Container widget for holding other widgets
              Container(
                width: 335, // Setting the width of the container
                height: 242, // Setting the height of the container
                decoration: BoxDecoration(
                  // Decoration for the container
                  borderRadius: BorderRadius.circular(20), // Setting border radius
                  border: Border.all(
                      color: const Color(0xFFDBDBDB), width: 1),
                  // Setting border properties
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Aligning content in the row at the center
                  children: [
                    // Widgets inside the row
                    const SizedBox(height: 24, width: 12,), // Adding space between widgets
                    // Column for vertical arrangement of widgets
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 24,),
                        RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                            style: TextStyle(),
                            children: <TextSpan>[

                              TextSpan(
                                text: 'Patient Name:',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Montserrat',
                                  fontSize: 14,
                                  color: Color(0xFF404040),
                                ),
                              ),
                              TextSpan(
                                text: '\nSohan Kumar',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Montserrat',
                                  fontSize: 14,
                                  color: Color(0xFF727272),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 18,),
                        RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                            style: TextStyle(),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Address:',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Montserrat',
                                  fontSize: 14,
                                  color: Color(0xFF404040),
                                ),
                              ),
                              TextSpan(
                                text: '\nNoida, UttarPradesh',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Montserrat',
                                  fontSize: 14,
                                  color: Color(0xFF727272),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 18,),
                        RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                            style: TextStyle(),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Blood Needed:',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Montserrat',
                                  fontSize: 14,
                                  color: Color(0xFF404040),
                                ),
                              ),
                              TextSpan(
                                text: '\n2 Units',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Montserrat',
                                  fontSize: 14,
                                  color: Color(0xFF727272),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 18,),
                        RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                            style: TextStyle(),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Date and Time:',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Montserrat',
                                  fontSize: 14,
                                  color: Color(0xFF404040),
                                ),
                              ),
                              TextSpan(
                                text: '\n23/10/2023 | 2:20 PM',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Montserrat',
                                  fontSize: 14,
                                  color: Color(0xFF727272),
                                ),
                              ),
                            ],
                          ),
                        ),


                      ],
                    ),
                    const SizedBox(width: 136,), // Adding space between widgets
                    // Column for vertical arrangement of widgets
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start, // Aligning content in the column at the start
                      children: [
                        const SizedBox(height: 24,),
                        Image(
                          image: AssetImage(
                              'lib/image/bloodinfo.png'),
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(height: 17,),
                        Icon(CupertinoIcons.bell,
                          size: 16,
                          color: Colors.black,
                        ),
                        SizedBox(height: 19,),
                        Icon(Icons.share_outlined,
                          size: 16,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24,),
              SizedBox(height: 67, width: 335,
                child: ElevatedButton(onPressed: () {
                  showMenu(
                    context: context,
                    position: const RelativeRect.fromLTRB(400, 500, 0, 0),
                    // Adjust the position as per your requirement
                    items: [
                      const PopupMenuItem(
                          value: 1,
                          child: Text('Upload File')
                      ),
                      const PopupMenuItem(
                          value: 2,
                          child: Text('Choose Folder')
                      ),
                      // Add more PopupMenuItems as needed
                    ],
                  );
                },
                  style: ElevatedButton.styleFrom(

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    backgroundColor: Colors.white,
                    elevation: 5, // Add the desired elevation value
                  ),
                  child: Row(
                    children: [
                      RichText(
                        textAlign: TextAlign.start,
                        text: const TextSpan(
                          style: TextStyle(),
                          children: <TextSpan>[

                            TextSpan(
                              text: 'Upload Documents',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                                color: Color(0xFF404040),
                              ),
                            ),
                            TextSpan(
                              text: '\nChoose from your mobile',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Montserrat',
                                fontSize: 10,
                                color: Color(0xFF727272),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 73,),
                      const Image(image: AssetImage('lib/image/upload.png'),
                        height: 27,
                        width: 27
                        ,),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24,),
              const Padding(padding: EdgeInsets.only(right: 140),
                child: Text('Interested on this request',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 21,),
              SizedBox(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(width: 20,),
                      SizedBox(
                        height: 157,
                        width: 257,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: const Color(0xFFDBDBDB),
                                        width: 1),
                                  ),
                                  width: 118,
                                  height: 156,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 80, left: 70),
                                            child:
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  CupertinoIcons.multiply),
                                              color:Color(0xFFDBDBDB),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 20, left: 41),
                                            child:
                                            CircleAvatar(
                                              child: Image(image: AssetImage(
                                                  'lib/image/ran1.png')),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 67, left: 20),
                                            child:
                                            RichText(
                                              textAlign: TextAlign.start,
                                              text: const TextSpan(
                                                style: TextStyle(),
                                                // Add your default style here
                                                children: [
                                                  TextSpan(
                                                    text: 'Amit Kumar',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w700,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF404040),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '\n1.4km | 4.3',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF727272),
                                                    ),
                                                  ),
                                                  WidgetSpan(
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 12,
                                                      color: Colors.amber,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 25,
                                        width: 157,
                                        child:
                                        ElevatedButton(
                                          onPressed: () {

                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: const Color(
                                                0xFFDE0A0A), // Set the desired background color
                                          ),
                                          child: const Text('Accept',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                                ),
                              ],
                            ),
                            const SizedBox(width: 20,),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: const Color(0xFFDBDBDB),
                                        width: 1),
                                  ),
                                  width: 118,
                                  height: 156,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 80, left: 70),
                                            child:
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  CupertinoIcons.multiply),
                                              color:Color(0xFFDBDBDB),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 20, left: 41),
                                            child:
                                            CircleAvatar(
                                              child: Image(image: AssetImage(
                                                  'lib/image/ran1.png')),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 67, left: 20),
                                            child:
                                            RichText(
                                              textAlign: TextAlign.start,
                                              text: const TextSpan(
                                                style: TextStyle(),
                                                // Add your default style here
                                                children: [
                                                  TextSpan(
                                                    text: 'Amit Kumar',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w700,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF404040),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '\n1.4km | 4.3',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF727272),
                                                    ),
                                                  ),
                                                  WidgetSpan(
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 12,
                                                      color: Colors.amber,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 25,
                                        width: 157,
                                        child:
                                        ElevatedButton(
                                          onPressed: () {

                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: const Color(
                                                0xFFDE0A0A), // Set the desired background color
                                          ),
                                          child: const Text('Accept',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20,),
                      SizedBox(
                        height: 157,
                        width: 257,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: const Color(0xFFDBDBDB),
                                        width: 1),
                                  ),
                                  width: 118,
                                  height: 156,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 80, left: 70),
                                            child:
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  CupertinoIcons.multiply),
                                              color:Color(0xFFDBDBDB),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 20, left: 41),
                                            child:
                                            CircleAvatar(
                                              child: Image(image: AssetImage(
                                                  'lib/image/ran1.png')),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 67, left: 20),
                                            child:
                                            RichText(
                                              textAlign: TextAlign.start,
                                              text: const TextSpan(
                                                style: TextStyle(),
                                                // Add your default style here
                                                children: [
                                                  TextSpan(
                                                    text: 'Amit Kumar',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w700,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF404040),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '\n1.4km | 4.3',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF727272),
                                                    ),
                                                  ),
                                                  WidgetSpan(
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 12,
                                                      color: Colors.amber,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 25,
                                        width: 157,
                                        child:
                                        ElevatedButton(
                                          onPressed: () {

                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: const Color(
                                                0xFFDE0A0A), // Set the desired background color
                                          ),
                                          child: const Text('Accept',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                                ),
                              ],
                            ),
                            const SizedBox(width: 20,),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: const Color(0xFFDBDBDB),
                                        width: 1),
                                  ),
                                  width: 118,
                                  height: 156,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 80, left: 70),
                                            child:
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  CupertinoIcons.multiply),
                                              color:Color(0xFFDBDBDB),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 20, left: 41),
                                            child:
                                            CircleAvatar(
                                              child: Image(image: AssetImage(
                                                  'lib/image/ran1.png')),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 67, left: 20),
                                            child:
                                            RichText(
                                              textAlign: TextAlign.start,
                                              text: const TextSpan(
                                                style: TextStyle(),
                                                // Add your default style here
                                                children: [
                                                  TextSpan(
                                                    text: 'Amit Kumar',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w700,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF404040),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '\n1.4km | 4.3',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF727272),
                                                    ),
                                                  ),
                                                  WidgetSpan(
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 12,
                                                      color: Colors.amber,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 25,
                                        width: 157,
                                        child:
                                        ElevatedButton(
                                          onPressed: () {

                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: const Color(
                                                0xFFDE0A0A), // Set the desired background color
                                          ),
                                          child: const Text('Accept',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20,),
                      SizedBox(
                        height: 157,
                        width: 257,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: const Color(0xFFDBDBDB),
                                        width: 1),
                                  ),
                                  width: 118,
                                  height: 156,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 80, left: 70),
                                            child:
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  CupertinoIcons.multiply),
                                              color:Color(0xFFDBDBDB),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 20, left: 41),
                                            child:
                                            CircleAvatar(
                                              child: Image(image: AssetImage(
                                                  'lib/image/ran1.png')),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 67, left: 20),
                                            child:
                                            RichText(
                                              textAlign: TextAlign.start,
                                              text: const TextSpan(
                                                style: TextStyle(),
                                                // Add your default style here
                                                children: [
                                                  TextSpan(
                                                    text: 'Amit Kumar',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w700,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF404040),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '\n1.4km | 4.3',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF727272),
                                                    ),
                                                  ),
                                                  WidgetSpan(
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 12,
                                                      color: Colors.amber,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 25,
                                        width: 157,
                                        child:
                                        ElevatedButton(
                                          onPressed: () {

                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: const Color(
                                                0xFFDE0A0A), // Set the desired background color
                                          ),
                                          child: const Text('Accept',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                                ),
                              ],
                            ),
                            const SizedBox(width: 20,),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: const Color(0xFFDBDBDB),
                                        width: 1),
                                  ),
                                  width: 118,
                                  height: 156,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 80, left: 70),
                                            child:
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  CupertinoIcons.multiply),
                                              color:Color(0xFFDBDBDB),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 20, left: 41),
                                            child:
                                            CircleAvatar(
                                              child: Image(image: AssetImage(
                                                  'lib/image/ran1.png')),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 67, left: 20),
                                            child:
                                            RichText(
                                              textAlign: TextAlign.start,
                                              text: const TextSpan(
                                                style: TextStyle(),
                                                // Add your default style here
                                                children: [
                                                  TextSpan(
                                                    text: 'Amit Kumar',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w700,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF404040),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '\n1.4km | 4.3',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF727272),
                                                    ),
                                                  ),
                                                  WidgetSpan(
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 12,
                                                      color: Colors.amber,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 25,
                                        width: 157,
                                        child:
                                        ElevatedButton(
                                          onPressed: () {

                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: const Color(
                                                0xFFDE0A0A), // Set the desired background color
                                          ),
                                          child: const Text('Accept',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20,),
                      SizedBox(
                        height: 157,
                        width: 257,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: const Color(0xFFDBDBDB),
                                        width: 1),
                                  ),
                                  width: 118,
                                  height: 156,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 80, left: 70),
                                            child:
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  CupertinoIcons.multiply),
                                              color:Color(0xFFDBDBDB),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 20, left: 41),
                                            child:
                                            CircleAvatar(
                                              child: Image(image: AssetImage(
                                                  'lib/image/ran1.png')),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 67, left: 20),
                                            child:
                                            RichText(
                                              textAlign: TextAlign.start,
                                              text: const TextSpan(
                                                style: TextStyle(),
                                                // Add your default style here
                                                children: [
                                                  TextSpan(
                                                    text: 'Amit Kumar',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w700,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF404040),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '\n1.4km | 4.3',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF727272),
                                                    ),
                                                  ),
                                                  WidgetSpan(
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 12,
                                                      color: Colors.amber,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 25,
                                        width: 157,
                                        child:
                                        ElevatedButton(
                                          onPressed: () {

                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: const Color(
                                                0xFFDE0A0A), // Set the desired background color
                                          ),
                                          child: const Text('Accept',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                                ),
                              ],
                            ),
                            const SizedBox(width: 20,),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: const Color(0xFFDBDBDB),
                                        width: 1),
                                  ),
                                  width: 118,
                                  height: 156,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 80, left: 70),
                                            child:
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  CupertinoIcons.multiply),
                                              color:Color(0xFFDBDBDB),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 20, left: 41),
                                            child:
                                            CircleAvatar(
                                              child: Image(image: AssetImage(
                                                  'lib/image/ran1.png')),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 67, left: 20),
                                            child:
                                            RichText(
                                              textAlign: TextAlign.start,
                                              text: const TextSpan(
                                                style: TextStyle(),
                                                // Add your default style here
                                                children: [
                                                  TextSpan(
                                                    text: 'Amit Kumar',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w700,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF404040),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '\n1.4km | 4.3',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF727272),
                                                    ),
                                                  ),
                                                  WidgetSpan(
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 12,
                                                      color: Colors.amber,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 25,
                                        width: 157,
                                        child:
                                        ElevatedButton(
                                          onPressed: () {

                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: const Color(
                                                0xFFDE0A0A), // Set the desired background color
                                          ),
                                          child: const Text('Accept',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20,),
                      SizedBox(
                        height: 157,
                        width: 257,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: const Color(0xFFDBDBDB),
                                        width: 1),
                                  ),
                                  width: 118,
                                  height: 156,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 80, left: 70),
                                            child:
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  CupertinoIcons.multiply),
                                              color:Color(0xFFDBDBDB),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 20, left: 41),
                                            child:
                                            CircleAvatar(
                                              child: Image(image: AssetImage(
                                                  'lib/image/ran1.png')),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 67, left: 20),
                                            child:
                                            RichText(
                                              textAlign: TextAlign.start,
                                              text: const TextSpan(
                                                style: TextStyle(),
                                                // Add your default style here
                                                children: [
                                                  TextSpan(
                                                    text: 'Amit Kumar',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w700,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF404040),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '\n1.4km | 4.3',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF727272),
                                                    ),
                                                  ),
                                                  WidgetSpan(
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 12,
                                                      color: Colors.amber,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 25,
                                        width: 157,
                                        child:
                                        ElevatedButton(
                                          onPressed: () {

                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: const Color(
                                                0xFFDE0A0A), // Set the desired background color
                                          ),
                                          child: const Text('Accept',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                                ),
                              ],
                            ),
                            const SizedBox(width: 20,),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: const Color(0xFFDBDBDB),
                                        width: 1),
                                  ),
                                  width: 118,
                                  height: 156,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 80, left: 70),
                                            child:
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  CupertinoIcons.multiply),
                                              color:Color(0xFFDBDBDB),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 20, left: 41),
                                            child:
                                            CircleAvatar(
                                              child: Image(image: AssetImage(
                                                  'lib/image/ran1.png')),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 67, left: 20),
                                            child:
                                            RichText(
                                              textAlign: TextAlign.start,
                                              text: const TextSpan(
                                                style: TextStyle(),
                                                // Add your default style here
                                                children: [
                                                  TextSpan(
                                                    text: 'Amit Kumar',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w700,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF404040),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '\n1.4km | 4.3',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF727272),
                                                    ),
                                                  ),
                                                  WidgetSpan(
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 12,
                                                      color: Colors.amber,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 25,
                                        width: 157,
                                        child:
                                        ElevatedButton(
                                          onPressed: () {

                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: const Color(
                                                0xFFDE0A0A), // Set the desired background color
                                          ),
                                          child: const Text('Accept',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20,),
                      SizedBox(
                        height: 157,
                        width: 257,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: const Color(0xFFDBDBDB),
                                        width: 1),
                                  ),
                                  width: 118,
                                  height: 156,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 80, left: 70),
                                            child:
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  CupertinoIcons.multiply),
                                              color:Color(0xFFDBDBDB),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 20, left: 41),
                                            child:
                                            CircleAvatar(
                                              child: Image(image: AssetImage(
                                                  'lib/image/ran1.png')),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 67, left: 20),
                                            child:
                                            RichText(
                                              textAlign: TextAlign.start,
                                              text: const TextSpan(
                                                style: TextStyle(),
                                                // Add your default style here
                                                children: [
                                                  TextSpan(
                                                    text: 'Amit Kumar',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w700,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF404040),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '\n1.4km | 4.3',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF727272),
                                                    ),
                                                  ),
                                                  WidgetSpan(
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 12,
                                                      color: Colors.amber,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 25,
                                        width: 157,
                                        child:
                                        ElevatedButton(
                                          onPressed: () {

                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: const Color(
                                                0xFFDE0A0A), // Set the desired background color
                                          ),
                                          child: const Text('Accept',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                                ),
                              ],
                            ),
                            const SizedBox(width: 20,),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: const Color(0xFFDBDBDB),
                                        width: 1),
                                  ),
                                  width: 118,
                                  height: 156,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 80, left: 70),
                                            child:
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  CupertinoIcons.multiply),
                                              color:Color(0xFFDBDBDB),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 20, left: 41),
                                            child:
                                            CircleAvatar(
                                              child: Image(image: AssetImage(
                                                  'lib/image/ran1.png')),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 67, left: 20),
                                            child:
                                            RichText(
                                              textAlign: TextAlign.start,
                                              text: const TextSpan(
                                                style: TextStyle(),
                                                // Add your default style here
                                                children: [
                                                  TextSpan(
                                                    text: 'Amit Kumar',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w700,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF404040),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '\n1.4km | 4.3',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF727272),
                                                    ),
                                                  ),
                                                  WidgetSpan(
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 12,
                                                      color: Colors.amber,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 25,
                                        width: 157,
                                        child:
                                        ElevatedButton(
                                          onPressed: () {

                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: const Color(
                                                0xFFDE0A0A), // Set the desired background color
                                          ),
                                          child: const Text('Accept',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20,),
                      SizedBox(
                        height: 157,
                        width: 257,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: const Color(0xFFDBDBDB),
                                        width: 1),
                                  ),
                                  width: 118,
                                  height: 156,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 80, left: 70),
                                            child:
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  CupertinoIcons.multiply),
                                              color:Color(0xFFDBDBDB),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 20, left: 41),
                                            child:
                                            CircleAvatar(
                                              child: Image(image: AssetImage(
                                                  'lib/image/ran1.png')),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 67, left: 20),
                                            child:
                                            RichText(
                                              textAlign: TextAlign.start,
                                              text: const TextSpan(
                                                style: TextStyle(),
                                                // Add your default style here
                                                children: [
                                                  TextSpan(
                                                    text: 'Amit Kumar',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w700,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF404040),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '\n1.4km | 4.3',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF727272),
                                                    ),
                                                  ),
                                                  WidgetSpan(
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 12,
                                                      color: Colors.amber,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 25,
                                        width: 157,
                                        child:
                                        ElevatedButton(
                                          onPressed: () {

                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: const Color(
                                                0xFFDE0A0A), // Set the desired background color
                                          ),
                                          child: const Text('Accept',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                                ),
                              ],
                            ),
                            const SizedBox(width: 20,),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: const Color(0xFFDBDBDB),
                                        width: 1),
                                  ),
                                  width: 118,
                                  height: 156,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 80, left: 70),
                                            child:
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  CupertinoIcons.multiply),
                                              color:Color(0xFFDBDBDB),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 20, left: 41),
                                            child:
                                            CircleAvatar(
                                              child: Image(image: AssetImage(
                                                  'lib/image/ran1.png')),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 67, left: 20),
                                            child:
                                            RichText(
                                              textAlign: TextAlign.start,
                                              text: const TextSpan(
                                                style: TextStyle(),
                                                // Add your default style here
                                                children: [
                                                  TextSpan(
                                                    text: 'Amit Kumar',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w700,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF404040),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '\n1.4km | 4.3',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF727272),
                                                    ),
                                                  ),
                                                  WidgetSpan(
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 12,
                                                      color: Colors.amber,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 25,
                                        width: 157,
                                        child:
                                        ElevatedButton(
                                          onPressed: () {

                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: const Color(
                                                0xFFDE0A0A), // Set the desired background color
                                          ),
                                          child: const Text('Accept',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20,),
                      SizedBox(
                        height: 157,
                        width: 257,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: const Color(0xFFDBDBDB),
                                        width: 1),
                                  ),
                                  width: 118,
                                  height: 156,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 80, left: 70),
                                            child:
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  CupertinoIcons.multiply),
                                              color:Color(0xFFDBDBDB),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 20, left: 41),
                                            child:
                                            CircleAvatar(
                                              child: Image(image: AssetImage(
                                                  'lib/image/ran1.png')),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 67, left: 20),
                                            child:
                                            RichText(
                                              textAlign: TextAlign.start,
                                              text: const TextSpan(
                                                style: TextStyle(),
                                                // Add your default style here
                                                children: [
                                                  TextSpan(
                                                    text: 'Amit Kumar',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w700,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF404040),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '\n1.4km | 4.3',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF727272),
                                                    ),
                                                  ),
                                                  WidgetSpan(
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 12,
                                                      color: Colors.amber,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 25,
                                        width: 157,
                                        child:
                                        ElevatedButton(
                                          onPressed: () {

                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: const Color(
                                                0xFFDE0A0A), // Set the desired background color
                                          ),
                                          child: const Text('Accept',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                                ),
                              ],
                            ),
                            const SizedBox(width: 20,),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: const Color(0xFFDBDBDB),
                                        width: 1),
                                  ),
                                  width: 118,
                                  height: 156,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 80, left: 70),
                                            child:
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  CupertinoIcons.multiply),
                                              color:Color(0xFFDBDBDB),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 20, left: 41),
                                            child:
                                            CircleAvatar(
                                              child: Image(image: AssetImage(
                                                  'lib/image/ran1.png')),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 67, left: 20),
                                            child:
                                            RichText(
                                              textAlign: TextAlign.start,
                                              text: const TextSpan(
                                                style: TextStyle(),
                                                // Add your default style here
                                                children: [
                                                  TextSpan(
                                                    text: 'Amit Kumar',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w700,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF404040),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '\n1.4km | 4.3',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF727272),
                                                    ),
                                                  ),
                                                  WidgetSpan(
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 12,
                                                      color: Colors.amber,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 25,
                                        width: 157,
                                        child:
                                        ElevatedButton(
                                          onPressed: () {

                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: const Color(
                                                0xFFDE0A0A), // Set the desired background color
                                          ),
                                          child: const Text('Accept',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20,),
                      SizedBox(
                        height: 157,
                        width: 257,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: const Color(0xFFDBDBDB),
                                        width: 1),
                                  ),
                                  width: 118,
                                  height: 156,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 80, left: 70),
                                            child:
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  CupertinoIcons.multiply),
                                              color:Color(0xFFDBDBDB),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 20, left: 41),
                                            child:
                                            CircleAvatar(
                                              child: Image(image: AssetImage(
                                                  'lib/image/ran1.png')),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 67, left: 20),
                                            child:
                                            RichText(
                                              textAlign: TextAlign.start,
                                              text: const TextSpan(
                                                style: TextStyle(),
                                                // Add your default style here
                                                children: [
                                                  TextSpan(
                                                    text: 'Amit Kumar',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w700,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF404040),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '\n1.4km | 4.3',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF727272),
                                                    ),
                                                  ),
                                                  WidgetSpan(
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 12,
                                                      color: Colors.amber,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 25,
                                        width: 157,
                                        child:
                                        ElevatedButton(
                                          onPressed: () {

                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: const Color(
                                                0xFFDE0A0A), // Set the desired background color
                                          ),
                                          child: const Text('Accept',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                                ),
                              ],
                            ),
                            const SizedBox(width: 20,),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: const Color(0xFFDBDBDB),
                                        width: 1),
                                  ),
                                  width: 118,
                                  height: 156,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 80, left: 70),
                                            child:
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  CupertinoIcons.multiply),
                                              color:Color(0xFFDBDBDB),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 20, left: 41),
                                            child:
                                            CircleAvatar(
                                              child: Image(image: AssetImage(
                                                  'lib/image/ran1.png')),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 67, left: 20),
                                            child:
                                            RichText(
                                              textAlign: TextAlign.start,
                                              text: const TextSpan(
                                                style: TextStyle(),
                                                // Add your default style here
                                                children: [
                                                  TextSpan(
                                                    text: 'Amit Kumar',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w700,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF404040),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '\n1.4km | 4.3',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF727272),
                                                    ),
                                                  ),
                                                  WidgetSpan(
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 12,
                                                      color: Colors.amber,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 25,
                                        width: 157,
                                        child:
                                        ElevatedButton(
                                          onPressed: () {

                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: const Color(
                                                0xFFDE0A0A), // Set the desired background color
                                          ),
                                          child: const Text('Accept',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20,),
                      SizedBox(
                        height: 157,
                        width: 257,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: const Color(0xFFDBDBDB),
                                        width: 1),
                                  ),
                                  width: 118,
                                  height: 156,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 80, left: 70),
                                            child:
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  CupertinoIcons.multiply),
                                              color:Color(0xFFDBDBDB),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 20, left: 41),
                                            child:
                                            CircleAvatar(
                                              child: Image(image: AssetImage(
                                                  'lib/image/ran1.png')),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 67, left: 20),
                                            child:
                                            RichText(
                                              textAlign: TextAlign.start,
                                              text: const TextSpan(
                                                style: TextStyle(),
                                                // Add your default style here
                                                children: [
                                                  TextSpan(
                                                    text: 'Amit Kumar',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w700,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF404040),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '\n1.4km | 4.3',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF727272),
                                                    ),
                                                  ),
                                                  WidgetSpan(
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 12,
                                                      color: Colors.amber,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 25,
                                        width: 157,
                                        child:
                                        ElevatedButton(
                                          onPressed: () {

                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: const Color(
                                                0xFFDE0A0A), // Set the desired background color
                                          ),
                                          child: const Text('Accept',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                                ),
                              ],
                            ),
                            const SizedBox(width: 20,),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: const Color(0xFFDBDBDB),
                                        width: 1),
                                  ),
                                  width: 118,
                                  height: 156,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 80, left: 70),
                                            child:
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  CupertinoIcons.multiply),
                                              color:Color(0xFFDBDBDB),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 20, left: 41),
                                            child:
                                            CircleAvatar(
                                              child: Image(image: AssetImage(
                                                  'lib/image/ran1.png')),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 67, left: 20),
                                            child:
                                            RichText(
                                              textAlign: TextAlign.start,
                                              text: const TextSpan(
                                                style: TextStyle(),
                                                // Add your default style here
                                                children: [
                                                  TextSpan(
                                                    text: 'Amit Kumar',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w700,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF404040),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '\n1.4km | 4.3',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF727272),
                                                    ),
                                                  ),
                                                  WidgetSpan(
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 12,
                                                      color: Colors.amber,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 25,
                                        width: 157,
                                        child:
                                        ElevatedButton(
                                          onPressed: () {

                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: const Color(
                                                0xFFDE0A0A), // Set the desired background color
                                          ),
                                          child: const Text('Accept',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20,),
                      SizedBox(
                        height: 157,
                        width: 257,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: const Color(0xFFDBDBDB),
                                        width: 1),
                                  ),
                                  width: 118,
                                  height: 156,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 80, left: 70),
                                            child:
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  CupertinoIcons.multiply),
                                              color:Color(0xFFDBDBDB),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 20, left: 41),
                                            child:
                                            CircleAvatar(
                                              child: Image(image: AssetImage(
                                                  'lib/image/ran1.png')),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 67, left: 20),
                                            child:
                                            RichText(
                                              textAlign: TextAlign.start,
                                              text: const TextSpan(
                                                style: TextStyle(),
                                                // Add your default style here
                                                children: [
                                                  TextSpan(
                                                    text: 'Amit Kumar',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w700,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF404040),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '\n1.4km | 4.3',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF727272),
                                                    ),
                                                  ),
                                                  WidgetSpan(
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 12,
                                                      color: Colors.amber,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 25,
                                        width: 157,
                                        child:
                                        ElevatedButton(
                                          onPressed: () {

                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: const Color(
                                                0xFFDE0A0A), // Set the desired background color
                                          ),
                                          child: const Text('Accept',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                                ),
                              ],
                            ),
                            const SizedBox(width: 20,),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: const Color(0xFFDBDBDB),
                                        width: 1),
                                  ),
                                  width: 118,
                                  height: 156,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 80, left: 70),
                                            child:
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  CupertinoIcons.multiply),
                                              color:Color(0xFFDBDBDB),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 20, left: 41),
                                            child:
                                            CircleAvatar(
                                              child: Image(image: AssetImage(
                                                  'lib/image/ran1.png')),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 67, left: 20),
                                            child:
                                            RichText(
                                              textAlign: TextAlign.start,
                                              text: const TextSpan(
                                                style: TextStyle(),
                                                // Add your default style here
                                                children: [
                                                  TextSpan(
                                                    text: 'Amit Kumar',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w700,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF404040),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '\n1.4km | 4.3',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF727272),
                                                    ),
                                                  ),
                                                  WidgetSpan(
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 12,
                                                      color: Colors.amber,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 25,
                                        width: 157,
                                        child:
                                        ElevatedButton(
                                          onPressed: () {

                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: const Color(
                                                0xFFDE0A0A), // Set the desired background color
                                          ),
                                          child: const Text('Accept',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20,),
                      SizedBox(
                        height: 157,
                        width: 257,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: const Color(0xFFDBDBDB),
                                        width: 1),
                                  ),
                                  width: 118,
                                  height: 156,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 80, left: 70),
                                            child:
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  CupertinoIcons.multiply),
                                              color:Color(0xFFDBDBDB),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 20, left: 41),
                                            child:
                                            CircleAvatar(
                                              child: Image(image: AssetImage(
                                                  'lib/image/ran1.png')),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 67, left: 20),
                                            child:
                                            RichText(
                                              textAlign: TextAlign.start,
                                              text: const TextSpan(
                                                style: TextStyle(),
                                                // Add your default style here
                                                children: [
                                                  TextSpan(
                                                    text: 'Amit Kumar',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w700,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF404040),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '\n1.4km | 4.3',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF727272),
                                                    ),
                                                  ),
                                                  WidgetSpan(
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 12,
                                                      color: Colors.amber,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 25,
                                        width: 157,
                                        child:
                                        ElevatedButton(
                                          onPressed: () {

                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: const Color(
                                                0xFFDE0A0A), // Set the desired background color
                                          ),
                                          child: const Text('Accept',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                                ),
                              ],
                            ),
                            const SizedBox(width: 20,),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: const Color(0xFFDBDBDB),
                                        width: 1),
                                  ),
                                  width: 118,
                                  height: 156,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 80, left: 70),
                                            child:
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  CupertinoIcons.multiply),
                                              color:Color(0xFFDBDBDB),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 20, left: 41),
                                            child:
                                            CircleAvatar(
                                              child: Image(image: AssetImage(
                                                  'lib/image/ran1.png')),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 67, left: 20),
                                            child:
                                            RichText(
                                              textAlign: TextAlign.start,
                                              text: const TextSpan(
                                                style: TextStyle(),
                                                // Add your default style here
                                                children: [
                                                  TextSpan(
                                                    text: 'Amit Kumar',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w700,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF404040),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '\n1.4km | 4.3',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      color: Color(0xFF727272),
                                                    ),
                                                  ),
                                                  WidgetSpan(
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 12,
                                                      color: Colors.amber,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 25,
                                        width: 157,
                                        child:
                                        ElevatedButton(
                                          onPressed: () {

                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: const Color(
                                                0xFFDE0A0A), // Set the desired background color
                                          ),
                                          child: const Text('Accept',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20,),
                    ],
                  ),

                ),
              ),
              // Adding more widgets like SizedBox, ElevatedButton, Padding, and more
              // Similar pattern follows for the remaining sections of the code
            ],
          ),
        ],
      ),
      // Adding bottom app bar and floating action button to the Scaffold
      bottomNavigationBar: const appbar(),
      floatingActionButton: const float(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
