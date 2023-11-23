//Request Page
// This page is inert Right Now and is created but cannot be initialized
// so we need to connect an API so tht when ever there are new request this page can be triggered
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/bottomappbar.dart';
import '../widgets/floatingactionbutton.dart';
import '10. viewme.dart';
import '11. Find Donors.dart';
import '13. RequestForm.dart';
import '14. YourRequests.dart';
import '18. DonateRequest.dart';
import '19. Notification.dart';
import '23. Chat page.dart';

// Home Page Widget
class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The main body of the home page
      body: Stack(
        children: [
          const Flex(
            direction: Axis.horizontal,
            // or Axis.horizontal, depending on your layout
            children: [
              Expanded(
                child: Image(
                  image: AssetImage('lib/image/back1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Column(
            children: [
              // Space at the top
              const SizedBox(height: 69),
              Row(
                children: [
                  // Profile picture
                  const SizedBox(width: 20),
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.transparent,
                    child: Image(
                      image: AssetImage('lib/image/pic.png'),
                      height: 120,
                      width: 120,
                    ),
                  ),
                  const SizedBox(width: 8),
                  // Greeting and user ID
                  RichText(
                    textAlign: TextAlign.start,
                    text: const TextSpan(
                      style: TextStyle(),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Hello Vivek',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: '\nUser ID: 123456789',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Montserrat',
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  // Navigation to the chat list page
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const ChatList()),);
                    },
                    child: const Image(image: AssetImage('lib/image/message.png')),
                  ),
                  // Navigation to the notification page
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const notification()),
                      );
                    },
                    icon: const Icon(
                      CupertinoIcons.bell,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 10)
                ],
              ),
              // Space between top section and the content
              const SizedBox(height: 28),
              // Horizontal scrolling section
             SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    // Widgets in the horizontal scroll
                    const SizedBox(width:20),
                    Container(
                      width: 290,
                      height: 139,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                          ),
                        ],
                      ),
                      child:  const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 15.2),
                          Text(
                            'You can become a Blood Donor in',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                            ),
                          ),
                          Stack(
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 15.2),
                                  Text(
                                    '4',
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Easy \n Steps',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(width: 89.1),
                                  Image(
                                      image: AssetImage('lib/image/cuate.png')),
                                ],
                              ),
                              Positioned(
                                top: 060, // Adjust this value as needed
                                left: 15.2, // Adjust this value as needed
                                child: Text(
                                  'Become a Donor Now',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 290,
                      height: 139,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                          ),
                        ],
                      ),
                      child:  const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 15.2),
                          Text(
                            'You can become a Blood Donor in',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                            ),
                          ),
                          Stack(
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 15.2),
                                  Text(
                                    '4',
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Easy \n Steps',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(width: 89.1),
                                  Image(
                                      image: AssetImage('lib/image/cuate.png')),
                                ],
                              ),
                              Positioned(
                                top: 060, // Adjust this value as needed
                                left: 15.2, // Adjust this value as needed
                                child: Text(
                                  'Become a Donor Now',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 290,
                      height: 139,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                          ),
                        ],
                      ),
                      child:  const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 15.2),
                          Text(
                            'You can become a Blood Donor in',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                            ),
                          ),
                          Stack(
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 15.2),
                                  Text(
                                    '4',
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Easy \n Steps',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(width: 89.1),
                                  Image(
                                      image: AssetImage('lib/image/cuate.png')),
                                ],
                              ),
                              Positioned(
                                top: 060, // Adjust this value as needed
                                left: 15.2, // Adjust this value as needed
                                child: Text(
                                  'Become a Donor Now',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 290,
                      height: 139,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                          ),
                        ],
                      ),
                      child:  const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 15.2),
                          Text(
                            'You can become a Blood Donor in',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                            ),
                          ),
                          Stack(
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 15.2),
                                  Text(
                                    '4',
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Easy \n Steps',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(width: 89.1),
                                  Image(
                                      image: AssetImage('lib/image/cuate.png')),
                                ],
                              ),
                              Positioned(
                                top: 060, // Adjust this value as needed
                                left: 15.2, // Adjust this value as needed
                                child: Text(
                                  'Become a Donor Now',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 290,
                      height: 139,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                          ),
                        ],
                      ),
                      child:  const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 15.2),
                          Text(
                            'You can become a Blood Donor in',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                            ),
                          ),
                          Stack(
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 15.2),
                                  Text(
                                    '4',
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Easy \n Steps',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(width: 89.1),
                                  Image(
                                      image: AssetImage('lib/image/cuate.png')),
                                ],
                              ),
                              Positioned(
                                top: 060, // Adjust this value as needed
                                left: 15.2, // Adjust this value as needed
                                child: Text(
                                  'Become a Donor Now',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 290,
                      height: 139,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                          ),
                        ],
                      ),
                      child:  const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 15.2),
                          Text(
                            'You can become a Blood Donor in',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                            ),
                          ),
                          Stack(
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 15.2),
                                  Text(
                                    '4',
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Easy \n Steps',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(width: 89.1),
                                  Image(
                                      image: AssetImage('lib/image/cuate.png')),
                                ],
                              ),
                              Positioned(
                                top: 060, // Adjust this value as needed
                                left: 15.2, // Adjust this value as needed
                                child: Text(
                                  'Become a Donor Now',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 290,
                      height: 139,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                          ),
                        ],
                      ),
                      child:  const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 15.2),
                          Text(
                            'You can become a Blood Donor in',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                            ),
                          ),
                          Stack(
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 15.2),
                                  Text(
                                    '4',
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Easy \n Steps',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(width: 89.1),
                                  Image(
                                      image: AssetImage('lib/image/cuate.png')),
                                ],
                              ),
                              Positioned(
                                top: 060, // Adjust this value as needed
                                left: 15.2, // Adjust this value as needed
                                child: Text(
                                  'Become a Donor Now',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    const SizedBox(width:20),
                    // Add widgets as needed
                  ],
                ),
              ),
              // Space between the horizontal scrolling section and the buttons section
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Button for navigating to the donors page
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => const donors()));
                    },
                    // Styling for the button
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(157, 120),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      backgroundColor: Colors.white,
                      elevation: 5, // Add the desired elevation value
                    ),
                    // Button content
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage('lib/image/bloodsearch.png')),
                        SizedBox(height: 8),
                        Text(
                          'Find Donors',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              color: CupertinoColors.black
                          ),
                        )
                      ],
                    ),
                  ),
                  // Button for navigating to the request form page
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => const requestform()));
                    },
                    // Styling for the button
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(157, 120),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      backgroundColor: Colors.white,
                      elevation: 5, // Add the desired elevation value
                    ),
                    // Button content
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage('lib/image/Group.png')),
                        SizedBox(height: 8),
                        Text(
                          'Request \nFor Blood',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              color: CupertinoColors.black
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              // Space between the buttons section and the "Recent Request" section
              const SizedBox(height: 24.29),
              // Text "Recent Request"
              const Row(
                children: [
                  SizedBox(width: 20,),
                  Text(
                    'Recent Request',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              // Space after the text "Recent Request"
              const SizedBox(height: 24.29, width: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const yourrequest()),
                    );
                  },
// Styling for the button
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(335, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    backgroundColor: Colors.white,
                    elevation: 5, // Add the desired elevation value
                  ),
                  child:  Column(
                    children: [
                      const SizedBox(height: 24),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Row(
                          children: [
                            const SizedBox(width: 12,),
                            // Date Container
                            Container(
                              width: 79,
                              height: 68,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xFFDE0A0A),
                              ),
                              alignment: Alignment.center,
                              child: RichText(
                                textAlign: TextAlign.center,
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
                            const SizedBox(width: 16),
// Request details
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Sohan',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '\n2 Units (Bloods) \nAIIMS Hospital, Ansari Nagar , \nNoida, Uttar Pradesh',
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
                            const SizedBox(width: 30),
                            // Icons for actions
                            const Column(
                              children: [
                                Image(
                                  image: AssetImage('lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                                Icon(
                                  CupertinoIcons.bell,
                                  size: 16,
                                  color: Colors.black,
                                ),
                                Icon(
                                  Icons.share_outlined,
                                  size: 16,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              // "Help Me" section
              Row(
                children: [
                  // Text "Help Me"
                  const SizedBox(width: 20),
                  const Text('Help Me',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 200),
                  // Button for navigating to the "View More" page
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const helpme()));
                    },
                    child: const Text('View More',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          color: Color(0xFFDE0A0A)
                      ),
                    ),
                  ),
                  const SizedBox(width: 18),
                ],
              ),
              // Scrolling section with user posts or requests
              SizedBox(
                height: 104,
                child:  SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      // Widgets displaying user posts or requests
                      Container(
                        width: 335,
                        height: 133,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1,
                            ),
                          ],
                        ),

                        child: Column(
                          children: [
                            const SizedBox(height: 024),
                            Row(
                              children: [
                                const SizedBox(width: 12,),
                                const CircleAvatar(
                                  child: Image(image: AssetImage(
                                      'lib/image/ran.png')),
                                ),
                                const SizedBox(width:17,),
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(text: 'Aditi Aggarwal',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            color: Colors.black
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\nNoida | 1.2 Km',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            color: Color(0xFF727272)
                                        ),
                                      ),
                                      TextSpan(text: '\n9:30AM',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            color: Color(0xFF727272)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width:120),
                                const Image(
                                  image: AssetImage('lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                const SizedBox(width: 70,),
                                SizedBox(
                                  height: 26,
                                  width: 156,
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (
                                            context) => const donaterequest()),
                                      );
                                    },
                                    backgroundColor: const Color(0xFFDE0A0A),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            20.0)),
                                    child: const Text('Donate Now',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 061,),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.share_outlined,
                                      size: 16
                                  ),

                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        width: 335,
                        height: 133,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1,
                            ),
                          ],
                        ),

                        child: Column(
                          children: [
                            const SizedBox(height: 024),
                            Row(
                              children: [
                                const SizedBox(width: 12,),
                                const CircleAvatar(
                                  child: Image(image: AssetImage(
                                      'lib/image/ran.png')),
                                ),
                                const SizedBox(width:17,),
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(text: 'Aditi Aggarwal',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            color: Colors.black
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\nNoida | 1.2 Km',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            color: Color(0xFF727272)
                                        ),
                                      ),
                                      TextSpan(text: '\n9:30AM',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            color: Color(0xFF727272)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width:120),
                                const Image(
                                  image: AssetImage('lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                const SizedBox(width: 70,),
                                SizedBox(
                                  height: 26,
                                  width: 156,
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (
                                            context) => const donaterequest()),
                                      );
                                    },
                                    backgroundColor: const Color(0xFFDE0A0A),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            20.0)),
                                    child: const Text('Donate Now',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 061,),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.share_outlined,
                                      size: 16
                                  ),

                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        width: 335,
                        height: 133,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1,
                            ),
                          ],
                        ),

                        child: Column(
                          children: [
                            const SizedBox(height: 024),
                            Row(
                              children: [
                                const SizedBox(width: 12,),
                                const CircleAvatar(
                                  child: Image(image: AssetImage(
                                      'lib/image/ran.png')),
                                ),
                                const SizedBox(width:17,),
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(text: 'Aditi Aggarwal',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            color: Colors.black
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\nNoida | 1.2 Km',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            color: Color(0xFF727272)
                                        ),
                                      ),
                                      TextSpan(text: '\n9:30AM',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            color: Color(0xFF727272)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width:120),
                                const Image(
                                  image: AssetImage('lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                const SizedBox(width: 70,),
                                SizedBox(
                                  height: 26,
                                  width: 156,
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (
                                            context) => const donaterequest()),
                                      );
                                    },
                                    backgroundColor: const Color(0xFFDE0A0A),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            20.0)),
                                    child: const Text('Donate Now',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 061,),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.share_outlined,
                                      size: 16
                                  ),

                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        width: 335,
                        height: 133,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1,
                            ),
                          ],
                        ),

                        child: Column(
                          children: [
                            const SizedBox(height: 024),
                            Row(
                              children: [
                                const SizedBox(width: 12,),
                                const CircleAvatar(
                                  child: Image(image: AssetImage(
                                      'lib/image/ran.png')),
                                ),
                                const SizedBox(width:17,),
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(text: 'Aditi Aggarwal',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            color: Colors.black
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\nNoida | 1.2 Km',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            color: Color(0xFF727272)
                                        ),
                                      ),
                                      TextSpan(text: '\n9:30AM',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            color: Color(0xFF727272)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width:120),
                                const Image(
                                  image: AssetImage('lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                const SizedBox(width: 70,),
                                SizedBox(
                                  height: 26,
                                  width: 156,
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (
                                            context) => const donaterequest()),
                                      );
                                    },
                                    backgroundColor: const Color(0xFFDE0A0A),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            20.0)),
                                    child: const Text('Donate Now',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 061,),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.share_outlined,
                                      size: 16
                                  ),

                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        width: 335,
                        height: 133,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1,
                            ),
                          ],
                        ),

                        child: Column(
                          children: [
                            const SizedBox(height: 024),
                            Row(
                              children: [
                                const SizedBox(width: 12,),
                                const CircleAvatar(
                                  child: Image(image: AssetImage(
                                      'lib/image/ran.png')),
                                ),
                                const SizedBox(width:17,),
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(text: 'Aditi Aggarwal',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            color: Colors.black
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\nNoida | 1.2 Km',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            color: Color(0xFF727272)
                                        ),
                                      ),
                                      TextSpan(text: '\n9:30AM',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            color: Color(0xFF727272)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width:120),
                                const Image(
                                  image: AssetImage('lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                const SizedBox(width: 70,),
                                SizedBox(
                                  height: 26,
                                  width: 156,
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (
                                            context) => const donaterequest()),
                                      );
                                    },
                                    backgroundColor: const Color(0xFFDE0A0A),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            20.0)),
                                    child: const Text('Donate Now',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 061,),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.share_outlined,
                                      size: 16
                                  ),

                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        width: 335,
                        height: 133,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1,
                            ),
                          ],
                        ),

                        child: Column(
                          children: [
                            const SizedBox(height: 024),
                            Row(
                              children: [
                                const SizedBox(width: 12,),
                                const CircleAvatar(
                                  child: Image(image: AssetImage(
                                      'lib/image/ran.png')),
                                ),
                                const SizedBox(width:17,),
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(text: 'Aditi Aggarwal',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            color: Colors.black
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\nNoida | 1.2 Km',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            color: Color(0xFF727272)
                                        ),
                                      ),
                                      TextSpan(text: '\n9:30AM',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            color: Color(0xFF727272)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width:120),
                                const Image(
                                  image: AssetImage('lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                const SizedBox(width: 70,),
                                SizedBox(
                                  height: 26,
                                  width: 156,
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (
                                            context) => const donaterequest()),
                                      );
                                    },
                                    backgroundColor: const Color(0xFFDE0A0A),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            20.0)),
                                    child: const Text('Donate Now',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 061,),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.share_outlined,
                                      size: 16
                                  ),

                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        width: 335,
                        height: 133,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1,
                            ),
                          ],
                        ),

                        child: Column(
                          children: [
                            const SizedBox(height: 024),
                            Row(
                              children: [
                                const SizedBox(width: 12,),
                                const CircleAvatar(
                                  child: Image(image: AssetImage(
                                      'lib/image/ran.png')),
                                ),
                                const SizedBox(width:17,),
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(text: 'Aditi Aggarwal',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            color: Colors.black
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\nNoida | 1.2 Km',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            color: Color(0xFF727272)
                                        ),
                                      ),
                                      TextSpan(text: '\n9:30AM',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            color: Color(0xFF727272)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width:120),
                                const Image(
                                  image: AssetImage('lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                const SizedBox(width: 70,),
                                SizedBox(
                                  height: 26,
                                  width: 156,
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (
                                            context) => const donaterequest()),
                                      );
                                    },
                                    backgroundColor: const Color(0xFFDE0A0A),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            20.0)),
                                    child: const Text('Donate Now',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 061,),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.share_outlined,
                                      size: 16
                                  ),

                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20,),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      // Bottom navigation bar
      bottomNavigationBar: const appbar(),
      // Floating action button
      floatingActionButton: const float(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
