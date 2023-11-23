//Blood Bank Near you
// This page is inert as the functionality has been removed
//Need to connect API as to enable Location tracking
import 'package:flutter/material.dart';
import '../widgets/bottomappbar.dart'; // Importing the custom bottom app bar widget
import '../widgets/floatingactionbutton.dart'; // Importing the custom floating action button widget
import '20. Appointment.dart'; // Importing the Appointment screen
import '8. Home.dart'; // Importing the Home screen

class bloodbank extends StatelessWidget {
  const bloodbank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              // Top section with back button and title
              const SizedBox(height: 69),
              Row(
                children: [
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
                  const SizedBox(width: 16),
                  const Text(
                    'Blood Bank',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 52),
              Stack(
                children: [
                  // Search bar
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Container(
                      width: 335,
                      height: 40,
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
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search...',
                                ),
                                keyboardType: TextInputType.text,
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
                              child: Image(
                                image: AssetImage('lib/image/search.png'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 482),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Button for booking an appointment
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: SizedBox(
                      width: 127.0,
                      height: 40.0,
                      child: FloatingActionButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const appointment()),
                          );
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        backgroundColor: const Color(0xFFDE0A0A),
                        child: const Row(
                          children: [
                            SizedBox(width: 4),
                            Icon(
                              Icons.add,
                              size: 28,
                            ),
                            SizedBox(width: 6),
                            Text(
                              'Book\nAppointment',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Montserrat',
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 4),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
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

