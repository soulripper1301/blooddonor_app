// Help Me Page
import 'package:flutter/material.dart';
import '../widgets/bottomappbar.dart';
import '../widgets/floatingactionbutton.dart';
import '18. DonateRequest.dart';
import '8. Home.dart';

class helpme extends StatelessWidget {
  const helpme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Getting screen width and height for responsive design
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          const Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(
                child: Image(
                  image: AssetImage('lib/image/back2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Column(
            children: [
              // Spacing for the top section
              SizedBox(
                width: screenWidth * 0.1,
                height: screenHeight * 0.069,
              ),
              Row(
                children: [
                  // Back button to navigate back to Home screen
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.016),
                  // Title for the screen
                  const Text(
                    'Help Me',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ],
              ),
              // Spacing after the title
              SizedBox(height: screenHeight * 0.030),
              // Main content section with a scrollable view
              SizedBox(
                width: screenWidth,
                height: screenHeight * 0.776,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      // Spacing at the top of the content
                      SizedBox(height: screenHeight * 0.032),
                      // Container for a specific request
                      Container(
                        width: screenWidth * 0.85,
                        height: screenHeight * 0.155,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: .05,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 24),
                            // Requester's information
                            Row(
                              children: [
                                const SizedBox(width: 12),
                                const CircleAvatar(
                                  child: Image(image: AssetImage('lib/image/ran.png')),
                                ),
                                const SizedBox(width: 17),
                                // Requester's name and location
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Aditi Aggarwal',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            color: Colors.black),
                                      ),
                                      TextSpan(
                                        text: '\nNoida | 1.2 Km',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            color: Color(0xFF727272)),
                                      ),
                                      TextSpan(
                                        text: '\n9:30AM',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            color: Color(0xFF727272)),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: screenWidth * 0.2),
                                // Icon for more information
                                const Image(
                                  image: AssetImage('lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                              ],
                            ),
                            // Action buttons for the request
                            Row(
                              children: [
                                SizedBox(width: screenWidth * 0.2),
                                // Button to donate to the request
                                SizedBox(
                                  height: screenHeight * 0.026,
                                  width: screenWidth * 0.28,
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const donaterequest()),
                                      );
                                    },
                                    backgroundColor: const Color(0xFFDE0A0A),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20.0)),
                                    child: const Text(
                                      'Donate Now',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                // Button for sharing the request
                                SizedBox(width: screenWidth * 0.15),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.share_outlined, size: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // Additional spacing after the request container
                      SizedBox(height: screenHeight * 0.02, width: screenWidth * 0.02),
                      Container(
                        width: screenWidth * 0.85,
                        height: screenHeight * 0.155,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: .05,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 24),
                            Row(
                              children: [
                                const SizedBox(width: 12),
                                const CircleAvatar(
                                  child: Image(image: AssetImage('lib/image/ran.png')),
                                ),
                                const SizedBox(width: 17),
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Aditi Aggarwal',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            color: Colors.black),
                                      ),
                                      TextSpan(
                                        text: '\nNoida | 1.2 Km',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            color: Color(0xFF727272)),
                                      ),
                                      TextSpan(
                                        text: '\n9:30AM',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            color: Color(0xFF727272)),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: screenWidth * 0.2),
                                const Image(
                                  image: AssetImage('lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: screenWidth * 0.2),
                                SizedBox(
                                  height: screenHeight * 0.026,
                                  width: screenWidth * 0.28,
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const donaterequest()),
                                      );
                                    },
                                    backgroundColor: const Color(0xFFDE0A0A),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20.0)),
                                    child: const Text(
                                      'Donate Now',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: screenWidth * 0.15),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.share_outlined, size: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02, width: screenWidth * 0.02),
                      Container(
                        width: screenWidth * 0.85,
                        height: screenHeight * 0.155,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: .05,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 24),
                            Row(
                              children: [
                                const SizedBox(width: 12),
                                const CircleAvatar(
                                  child: Image(image: AssetImage('lib/image/ran.png')),
                                ),
                                const SizedBox(width: 17),
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Aditi Aggarwal',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            color: Colors.black),
                                      ),
                                      TextSpan(
                                        text: '\nNoida | 1.2 Km',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            color: Color(0xFF727272)),
                                      ),
                                      TextSpan(
                                        text: '\n9:30AM',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            color: Color(0xFF727272)),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: screenWidth * 0.2),
                                const Image(
                                  image: AssetImage('lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: screenWidth * 0.2),
                                SizedBox(
                                  height: screenHeight * 0.026,
                                  width: screenWidth * 0.28,
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const donaterequest()),
                                      );
                                    },
                                    backgroundColor: const Color(0xFFDE0A0A),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20.0)),
                                    child: const Text(
                                      'Donate Now',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: screenWidth * 0.15),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.share_outlined, size: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02, width: screenWidth * 0.02),
                      Container(
                        width: screenWidth * 0.85,
                        height: screenHeight * 0.155,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: .05,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 24),
                            Row(
                              children: [
                                const SizedBox(width: 12),
                                const CircleAvatar(
                                  child: Image(image: AssetImage('lib/image/ran.png')),
                                ),
                                const SizedBox(width: 17),
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Aditi Aggarwal',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            color: Colors.black),
                                      ),
                                      TextSpan(
                                        text: '\nNoida | 1.2 Km',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            color: Color(0xFF727272)),
                                      ),
                                      TextSpan(
                                        text: '\n9:30AM',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            color: Color(0xFF727272)),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: screenWidth * 0.2),
                                const Image(
                                  image: AssetImage('lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: screenWidth * 0.2),
                                SizedBox(
                                  height: screenHeight * 0.026,
                                  width: screenWidth * 0.28,
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const donaterequest()),
                                      );
                                    },
                                    backgroundColor: const Color(0xFFDE0A0A),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20.0)),
                                    child: const Text(
                                      'Donate Now',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: screenWidth * 0.15),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.share_outlined, size: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02, width: screenWidth * 0.02),
                      Container(
                        width: screenWidth * 0.85,
                        height: screenHeight * 0.155,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: .05,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 24),
                            Row(
                              children: [
                                const SizedBox(width: 12),
                                const CircleAvatar(
                                  child: Image(image: AssetImage('lib/image/ran.png')),
                                ),
                                const SizedBox(width: 17),
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Aditi Aggarwal',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            color: Colors.black),
                                      ),
                                      TextSpan(
                                        text: '\nNoida | 1.2 Km',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            color: Color(0xFF727272)),
                                      ),
                                      TextSpan(
                                        text: '\n9:30AM',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            color: Color(0xFF727272)),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: screenWidth * 0.2),
                                const Image(
                                  image: AssetImage('lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: screenWidth * 0.2),
                                SizedBox(
                                  height: screenHeight * 0.026,
                                  width: screenWidth * 0.28,
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const donaterequest()),
                                      );
                                    },
                                    backgroundColor: const Color(0xFFDE0A0A),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20.0)),
                                    child: const Text(
                                      'Donate Now',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: screenWidth * 0.15),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.share_outlined, size: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02, width: screenWidth * 0.02),
                      Container(
                        width: screenWidth * 0.85,
                        height: screenHeight * 0.155,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: .05,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 24),
                            Row(
                              children: [
                                const SizedBox(width: 12),
                                const CircleAvatar(
                                  child: Image(image: AssetImage('lib/image/ran.png')),
                                ),
                                const SizedBox(width: 17),
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Aditi Aggarwal',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            color: Colors.black),
                                      ),
                                      TextSpan(
                                        text: '\nNoida | 1.2 Km',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            color: Color(0xFF727272)),
                                      ),
                                      TextSpan(
                                        text: '\n9:30AM',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            color: Color(0xFF727272)),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: screenWidth * 0.2),
                                const Image(
                                  image: AssetImage('lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: screenWidth * 0.2),
                                SizedBox(
                                  height: screenHeight * 0.026,
                                  width: screenWidth * 0.28,
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const donaterequest()),
                                      );
                                    },
                                    backgroundColor: const Color(0xFFDE0A0A),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20.0)),
                                    child: const Text(
                                      'Donate Now',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: screenWidth * 0.15),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.share_outlined, size: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02, width: screenWidth * 0.02),
                      Container(
                        width: screenWidth * 0.85,
                        height: screenHeight * 0.155,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: .05,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 24),
                            Row(
                              children: [
                                const SizedBox(width: 12),
                                const CircleAvatar(
                                  child: Image(image: AssetImage('lib/image/ran.png')),
                                ),
                                const SizedBox(width: 17),
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Aditi Aggarwal',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            color: Colors.black),
                                      ),
                                      TextSpan(
                                        text: '\nNoida | 1.2 Km',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            color: Color(0xFF727272)),
                                      ),
                                      TextSpan(
                                        text: '\n9:30AM',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            color: Color(0xFF727272)),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: screenWidth * 0.2),
                                const Image(
                                  image: AssetImage('lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: screenWidth * 0.2),
                                SizedBox(
                                  height: screenHeight * 0.026,
                                  width: screenWidth * 0.28,
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const donaterequest()),
                                      );
                                    },
                                    backgroundColor: const Color(0xFFDE0A0A),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20.0)),
                                    child: const Text(
                                      'Donate Now',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: screenWidth * 0.15),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.share_outlined, size: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02, width: screenWidth * 0.02),
                      Container(
                        width: screenWidth * 0.85,
                        height: screenHeight * 0.155,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: .05,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 24),
                            Row(
                              children: [
                                const SizedBox(width: 12),
                                const CircleAvatar(
                                  child: Image(image: AssetImage('lib/image/ran.png')),
                                ),
                                const SizedBox(width: 17),
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Aditi Aggarwal',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            color: Colors.black),
                                      ),
                                      TextSpan(
                                        text: '\nNoida | 1.2 Km',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            color: Color(0xFF727272)),
                                      ),
                                      TextSpan(
                                        text: '\n9:30AM',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            color: Color(0xFF727272)),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: screenWidth * 0.2),
                                const Image(
                                  image: AssetImage('lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: screenWidth * 0.2),
                                SizedBox(
                                  height: screenHeight * 0.026,
                                  width: screenWidth * 0.28,
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const donaterequest()),
                                      );
                                    },
                                    backgroundColor: const Color(0xFFDE0A0A),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20.0)),
                                    child: const Text(
                                      'Donate Now',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: screenWidth * 0.15),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.share_outlined, size: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02, width: screenWidth * 0.02),
                      // Add more components here as needed
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const appbar(),
      floatingActionButton: const float(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

