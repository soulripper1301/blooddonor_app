import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/bottomappbar.dart';
import '../widgets/floatingactionbutton.dart';
import '15. YourRequestsCompleted.dart';
import '16. requestId.dart';
import '8. Home.dart';
class notification extends StatelessWidget {
  const notification ({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          const Flex(
            direction: Axis.horizontal,
            // or Axis.horizontal, depending on your layout
            children: [
              Expanded(
                child: Image( // Header BackGround
                  image: AssetImage('lib/image/back2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(width: 20, height: 69,),
              Row( // Header Row
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
                    },
                    icon: const Icon(Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Text('Notifications',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                    ),
                  ),
                  const SizedBox(width: 112,),
                  OutlinedButton(
                      onPressed: () {},


                      style: ButtonStyle(
                        side: MaterialStateProperty.all<BorderSide>(
                          const BorderSide(color: Colors.transparent,
                              width: 2), // Change the color and width as per your requirement
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.transparent),
                      ),
                      child: const Icon(CupertinoIcons.search,
                        size: 20,
                        color: Colors.white,
                      )
                  ),
                ],
              ),
               SizedBox(height: screenHeight * 0.016,),
              Padding(padding: const EdgeInsets.only(right: 50),
              child: SizedBox(
                height: screenHeight * 0.775, // Height of the Sized Box
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Today', // Time of Notification
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                      ),
                      ),
                      const SizedBox(height: 24,),
                      // Notification tabs
                      Container( // Notification tabs
                        width: 294,
                        height: 52,
                        alignment: Alignment.centerLeft,
                        child: const Row(
                          children: [
                            CircleAvatar(
                              child: Image(image: AssetImage('lib/image/ran1.png'),
                              width: 52,
                              height: 52,
                              ),
                            ),
                            SizedBox(width: 8,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Anish Sharma',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w700,
                                ),
                                ),
                                Text('Left a 5 star review for your kind donation',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text('09:30 AM',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),

                      ),
                      const SizedBox(height: 24,),
                      // Notification tabs
                      Container(
                        width: 294,
                        height: 52,
                        child: const Row(
                          children: [
                            CircleAvatar(
                              child: Image(image: AssetImage('lib/image/ran1.png'),
                                width: 52,
                                height: 52,
                              ),
                            ),
                            SizedBox(width: 8,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Anish Sharma',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text('Left a 5 star review for your kind donation',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text('09:30 AM',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),

                      ),
                      const SizedBox(height: 24,),
                      // Notification tabs
                      Container(
                        width: 294,
                        height: 52,
                        child: const Row(
                          children: [
                            CircleAvatar(
                              child: Image(image: AssetImage('lib/image/ran1.png'),
                                width: 52,
                                height: 52,
                              ),
                            ),
                            SizedBox(width: 8,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Anish Sharma',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text('Left a 5 star review for your kind donation',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text('09:30 AM',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),

                      ),
                      const SizedBox(height: 24,),
                      // Notification tabs
                      Container(
                        width: 294,
                        height: 52,
                        child: const Row(
                          children: [
                            CircleAvatar(
                              child: Image(image: AssetImage('lib/image/ran1.png'),
                                width: 52,
                                height: 52,
                              ),
                            ),
                            SizedBox(width: 8,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Anish Sharma',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text('Left a 5 star review for your kind donation',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text('09:30 AM',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),

                      ),
                      const SizedBox(height: 32,),
                      const Text('Yesterday',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 24,),
                      Container(
                        width: 294,
                        height: 52,
                        child: const Row(
                          children: [
                            CircleAvatar(
                              child: Image(image: AssetImage('lib/image/ran1.png'),
                                width: 52,
                                height: 52,
                              ),
                            ),
                            SizedBox(width: 8,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Anish Sharma',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text('Left a 5 star review for your kind donation',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text('09:30 AM',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),

                      ),
                      const SizedBox(height: 24,),
                      Container(
                        width: 294,
                        height: 52,
                        child: const Row(
                          children: [
                            CircleAvatar(
                              child: Image(image: AssetImage('lib/image/ran1.png'),
                                width: 52,
                                height: 52,
                              ),
                            ),
                            SizedBox(width: 8,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Anish Sharma',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text('Left a 5 star review for your kind donation',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text('09:30 AM',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),

                      ),
                      const SizedBox(height: 24,),
                      Container(
                        width: 294,
                        height: 52,
                        child: const Row(
                          children: [
                            CircleAvatar(
                              child: Image(image: AssetImage('lib/image/ran1.png'),
                                width: 52,
                                height: 52,
                              ),
                            ),
                            SizedBox(width: 8,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Anish Sharma',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text('Left a 5 star review for your kind donation',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text('09:30 AM',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),

                      ),
                      const SizedBox(height: 24,),
                      Container(
                        width: 294,
                        height: 52,
                        child: const Row(
                          children: [
                            CircleAvatar(
                              child: Image(image: AssetImage('lib/image/ran1.png'),
                                width: 52,
                                height: 52,
                              ),
                            ),
                            SizedBox(width: 8,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Anish Sharma',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text('Left a 5 star review for your kind donation',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text('09:30 AM',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),

                      ),
                      const SizedBox(height: 24,),
                      Container(
                        width: 294,
                        height: 52,
                        child: const Row(
                          children: [
                            CircleAvatar(
                              child: Image(image: AssetImage('lib/image/ran1.png'),
                                width: 52,
                                height: 52,
                              ),
                            ),
                            SizedBox(width: 8,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Anish Sharma',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text('Left a 5 star review for your kind donation',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text('09:30 AM',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),

                      ),
                      const SizedBox(height: 24,),
                      Container(
                        width: 294,
                        height: 52,
                        child: const Row(
                          children: [
                            CircleAvatar(
                              child: Image(image: AssetImage('lib/image/ran1.png'),
                                width: 52,
                                height: 52,
                              ),
                            ),
                            SizedBox(width: 8,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Anish Sharma',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text('Left a 5 star review for your kind donation',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text('09:30 AM',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),

                      ),
                      const SizedBox(height: 24,),
                      Container(
                        width: 294,
                        height: 52,
                        child: const Row(
                          children: [
                            CircleAvatar(
                              child: Image(image: AssetImage('lib/image/ran1.png'),
                                width: 52,
                                height: 52,
                              ),
                            ),
                            SizedBox(width: 8,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Anish Sharma',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text('Left a 5 star review for your kind donation',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text('09:30 AM',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),

                      ),
                      const SizedBox(height: 24,),
                      Container(
                        width: 294,
                        height: 52,
                        child: const Row(
                          children: [
                            CircleAvatar(
                              child: Image(image: AssetImage('lib/image/ran1.png'),
                                width: 52,
                                height: 52,
                              ),
                            ),
                            SizedBox(width: 8,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Anish Sharma',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text('Left a 5 star review for your kind donation',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text('09:30 AM',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),

                      ),
                      const SizedBox(height: 32,),
                      const Text('Day Before Yesterday',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 24,),
                      Container(
                        width: 294,
                        height: 52,
                        child: const Row(
                          children: [
                            CircleAvatar(
                              child: Image(image: AssetImage('lib/image/ran1.png'),
                                width: 52,
                                height: 52,
                              ),
                            ),
                            SizedBox(width: 8,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Anish Sharma',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text('Left a 5 star review for your kind donation',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text('09:30 AM',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),

                      ),
                      const SizedBox(height: 24,),
                      Container(
                        width: 294,
                        height: 52,
                        child: const Row(
                          children: [
                            CircleAvatar(
                              child: Image(image: AssetImage('lib/image/ran1.png'),
                                width: 52,
                                height: 52,
                              ),
                            ),
                            SizedBox(width: 8,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Anish Sharma',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text('Left a 5 star review for your kind donation',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text('09:30 AM',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),

                      ),
                      const SizedBox(height: 24,),
                      Container(
                        width: 294,
                        height: 52,
                        child: const Row(
                          children: [
                            CircleAvatar(
                              child: Image(image: AssetImage('lib/image/ran1.png'),
                                width: 52,
                                height: 52,
                              ),
                            ),
                            SizedBox(width: 8,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Anish Sharma',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text('Left a 5 star review for your kind donation',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text('09:30 AM',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),

                      ),
                      const SizedBox(height: 24,),
                      Container(
                        width: 294,
                        height: 52,
                        child: const Row(
                          children: [
                            CircleAvatar(
                              child: Image(image: AssetImage('lib/image/ran1.png'),
                                width: 52,
                                height: 52,
                              ),
                            ),
                            SizedBox(width: 8,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Anish Sharma',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text('Left a 5 star review for your kind donation',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text('09:30 AM',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),

                      ),
                      const SizedBox(height: 24,),
                      Container(
                        width: 294,
                        height: 52,
                        child: const Row(
                          children: [
                            CircleAvatar(
                              child: Image(image: AssetImage('lib/image/ran1.png'),
                                width: 52,
                                height: 52,
                              ),
                            ),
                            SizedBox(width: 8,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Anish Sharma',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text('Left a 5 star review for your kind donation',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text('09:30 AM',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),

                      ),
                      const SizedBox(height: 24,),
                      Container(
                        width: 294,
                        height: 52,
                        child: const Row(
                          children: [
                            CircleAvatar(
                              child: Image(image: AssetImage('lib/image/ran1.png'),
                                width: 52,
                                height: 52,
                              ),
                            ),
                            SizedBox(width: 8,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Anish Sharma',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text('Left a 5 star review for your kind donation',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text('09:30 AM',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),

                      ),
                      const SizedBox(height: 24,),
                      Container(
                        width: 294,
                        height: 52,
                        child: const Row(
                          children: [
                            CircleAvatar(
                              child: Image(image: AssetImage('lib/image/ran1.png'),
                                width: 52,
                                height: 52,
                              ),
                            ),
                            SizedBox(width: 8,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Anish Sharma',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text('Left a 5 star review for your kind donation',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text('09:30 AM',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),

                      ),
                      const SizedBox(height: 24,),
                      Container(
                        width: 294,
                        height: 52,
                        child: const Row(
                          children: [
                            CircleAvatar(
                              child: Image(image: AssetImage('lib/image/ran1.png'),
                                width: 52,
                                height: 52,
                              ),
                            ),
                            SizedBox(width: 8,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Anish Sharma',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text('Left a 5 star review for your kind donation',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text('09:30 AM',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),

                      ),
                      const SizedBox(height: 32,),
                    ],
                  ),
                ),
              ),
    ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const appbar(),
      // Bottom AppBar
      floatingActionButton: const float(),
      //Floating Action Button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
