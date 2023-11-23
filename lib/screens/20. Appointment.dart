import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/bottomappbar.dart';
import '../widgets/floatingactionbutton.dart';
import '8. Home.dart';
import '21. NewAppointment.dart';
class appointment extends StatelessWidget {
  const appointment({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child:
    Scaffold(
      body: Stack(
        children: [
          const Flex(
            direction: Axis.horizontal,
            // or Axis.horizontal, depending on your layout
            children: [
              Expanded(
                child: Image( //Background Image
                  image: AssetImage('lib/image/back2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(width: 20, height: 69,),
              Row( //Header Row
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
                  const Text('Appointment',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                    ),
                  ),

                ],
              ),
              const SizedBox(height: 7),
              const TabBar(
                indicatorColor: Color(0xFFDE0A0A),
                labelColor: Color(0xFFDE0A0A),
                // Set the selected tab text color
                unselectedLabelColor: Color(0xFF727272),
                // Set the unselected tab text color
                dividerColor: Color(0xFF727272),
                tabs: [
                  Tab(text: 'Upcoming',),
                  Tab(text: 'Previous')
                ],
              ),
              Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox( //Scrolling for appointments
                      height: 610,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            Container(
                              width: 335, // width of container
                              height: 190, // height of container
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    color: const Color(0xFFDBDBDB), width: 1),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const SizedBox(height: 24, width: 12,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .start,
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: [
                                          const SizedBox(height: 24,),
                                          RichText(
                                            textAlign: TextAlign.start,
                                            text: const TextSpan(
                                              style: TextStyle(),
                                              children: <TextSpan>[

                                                TextSpan(
                                                  text: 'To',
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
                                      const SizedBox(width: 128,),
                                      const Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .start,
                                        children: [
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
                                  const SizedBox(height: 18,),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20,),
                            Container(
                              width: 335, // width of container
                              height: 190, // height of container
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    color: const Color(0xFFDBDBDB), width: 1),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const SizedBox(height: 24, width: 12,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .start,
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: [
                                          const SizedBox(height: 24,),
                                          RichText(
                                            textAlign: TextAlign.start,
                                            text: const TextSpan(
                                              style: TextStyle(),
                                              children: <TextSpan>[

                                                TextSpan(
                                                  text: 'To',
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
                                      const SizedBox(width: 128,),
                                      const Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .start,
                                        children: [
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
                                  const SizedBox(height: 18,),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20,),
                            Container(
                              width: 335, // width of container
                              height: 190, // height of container
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    color: const Color(0xFFDBDBDB), width: 1),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const SizedBox(height: 24, width: 12,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .start,
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: [
                                          const SizedBox(height: 24,),
                                          RichText(
                                            textAlign: TextAlign.start,
                                            text: const TextSpan(
                                              style: TextStyle(),
                                              children: <TextSpan>[

                                                TextSpan(
                                                  text: 'To',
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
                                      const SizedBox(width: 128,),
                                      const Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .start,
                                        children: [
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
                                  const SizedBox(height: 18,),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20,),
                            Container(
                              width: 335, // width of container
                              height: 190, // height of container
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    color: const Color(0xFFDBDBDB), width: 1),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const SizedBox(height: 24, width: 12,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .start,
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: [
                                          const SizedBox(height: 24,),
                                          RichText(
                                            textAlign: TextAlign.start,
                                            text: const TextSpan(
                                              style: TextStyle(),
                                              children: <TextSpan>[

                                                TextSpan(
                                                  text: 'To',
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
                                      const SizedBox(width: 128,),
                                      const Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .start,
                                        children: [
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
                                  const SizedBox(height: 18,),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20,),
                            Container(
                              width: 335, // width of container
                              height: 190, // height of container
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    color: const Color(0xFFDBDBDB), width: 1),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const SizedBox(height: 24, width: 12,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .start,
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: [
                                          const SizedBox(height: 24,),
                                          RichText(
                                            textAlign: TextAlign.start,
                                            text: const TextSpan(
                                              style: TextStyle(),
                                              children: <TextSpan>[

                                                TextSpan(
                                                  text: 'To',
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
                                      const SizedBox(width: 128,),
                                      const Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .start,
                                        children: [
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
                                  const SizedBox(height: 18,),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20,),
                            Container(
                              width: 335, // width of container
                              height: 190, // height of container
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    color: const Color(0xFFDBDBDB), width: 1),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const SizedBox(height: 24, width: 12,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .start,
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: [
                                          const SizedBox(height: 24,),
                                          RichText(
                                            textAlign: TextAlign.start,
                                            text: const TextSpan(
                                              style: TextStyle(),
                                              children: <TextSpan>[

                                                TextSpan(
                                                  text: 'To',
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
                                      const SizedBox(width: 128,),
                                      const Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .start,
                                        children: [
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
                                  const SizedBox(height: 18,),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20,),
                            Container(
                              width: 335, // width of container
                              height: 190, // height of container
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    color: const Color(0xFFDBDBDB), width: 1),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const SizedBox(height: 24, width: 12,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .start,
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: [
                                          const SizedBox(height: 24,),
                                          RichText(
                                            textAlign: TextAlign.start,
                                            text: const TextSpan(
                                              style: TextStyle(),
                                              children: <TextSpan>[

                                                TextSpan(
                                                  text: 'To',
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
                                      const SizedBox(width: 128,),
                                      const Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .start,
                                        children: [
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
                                  const SizedBox(height: 18,),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20,),

                          ],
                        ),
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 30,),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const appbar(),
      //Bottom AppBar
      floatingActionButton: const float(),
      //Floating Action Button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    ),
    );
  }
}
