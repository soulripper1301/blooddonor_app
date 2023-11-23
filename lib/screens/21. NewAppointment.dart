import 'package:blood_app/screens/20.%20Appointment.dart';
import 'package:flutter/material.dart';
import 'package:carousel_calendar/carousel_calendar.dart';
import 'package:table_calendar/table_calendar.dart';

import '../widgets/FABR.dart';
import '../widgets/bottomappbar.dart';
import '../widgets/floatingactionbutton.dart';
import '8. Home.dart';

class newappo extends StatelessWidget {
  const newappo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Flex(
            direction: Axis.horizontal,
            // or Axis.horizontal, depending on your layout
            children: [
              Expanded(
                child: Image( // BackGround Image
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
                        MaterialPageRoute(builder: (context) => const appointment()),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Text(
                    'New Appointment',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 72,),
              SingleChildScrollView( //scroll Functionality for Carousal Calender
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TableCalendar( // Table Calender
                      lastDay: DateTime.now().add(const Duration(days: 365)),
                      firstDay: DateTime.now().subtract(
                          const Duration(days: 365)),
                      focusedDay: DateTime.now(),
                      calendarFormat: CalendarFormat.week,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 43,),
              const Padding(padding: EdgeInsets.only(right: 298),
                  child: Text('Time',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF727272)
                    ),
                  )
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Container(
                      width: 335,
                      height: 48,
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
                      child: Row(
                        children: [
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: TextField( // Text Field for Time
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                                keyboardType: TextInputType.datetime,
                                cursorColor: Color(0xFF727272),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              // Perform your action here
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row( // Buttons for choosing AM or PM
                                children: [
                                  TextButton(
                                      onPressed: (){},
                                      child: const Text('AM',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          fontFamily: 'Montserrat',
                                          color: Color(0xFF727272),
                                        ),
                                      ),
                                  ),
                                  const Text('|',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                      color: Color(0xFF727272),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: (){},
                                    child: const Text('PM',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        fontFamily: 'Montserrat',
                                        color: Color(0xFF727272),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16,),
              const Padding(padding: EdgeInsets.only(right: 267),
                  child: Text('Location',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF727272)
                    ),
                  )
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Container(
                      width: 335,
                      height: 48,
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
                      child: Row(
                        children: [
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: TextField( // Text Field for Filling Location
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                                keyboardType: TextInputType.datetime,
                                cursorColor: Color(0xFF727272),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              // Perform your action here
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.location_on_outlined)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 52,),
              FABR( // Floating Action Button for Submitting Appointment
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const appointment()),
                  );
                },
                ButtonText: 'Submit',

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
