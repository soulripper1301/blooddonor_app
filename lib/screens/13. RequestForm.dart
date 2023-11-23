// Request Form Page
import 'package:blood_app/widgets/FABR.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import '../widgets/bottomappbar.dart'; // Importing the custom bottom app bar widget
import '../widgets/floatingactionbutton.dart'; // Importing the custom floating action button widget
import '8. Home.dart'; // Importing the Home screen
import '14. YourRequests.dart'; // Importing the Your Requests screen

class requestform extends StatelessWidget {
  const requestform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    DateTime? _selectedDate;

    void _selectDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime.now(),
      );
      if (picked != null && picked != _selectedDate) {
        _selectedDate = picked;
      }
    }

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
              const SizedBox(width: 20, height: 69),
              Row(
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
                  const Text('Blood Request',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: screenHeight * 0.744,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                       SizedBox(height: screenHeight * 0.032),
                      // Text describing the purpose of the form
                      const Text('Please Fill the Details Correctly',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF404040),
                        ),
                      ),
                       SizedBox(height: screenHeight * 0.032),
                      // Form inputs for blood request details
                      // Some form fields are wrapped in containers for styling purposes
                      // Various form inputs such as text fields, date picker, dropdowns, etc.
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * 0.8,
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: TextField(
                          readOnly: true, // Disable keyboard popup
                          onTap: () {
                            final RenderBox renderBox = context
                                .findRenderObject() as RenderBox;
                            final size = renderBox.size;
                            final position = RelativeRect.fromLTRB(
                              size.width * 0.5,
                              size.height * 0.0,
                              0,
                              size.height * 0.0,
                            );
                            showMenu<String>(
                              context: context,
                              position: position,
                              items: const [
                                PopupMenuItem<String>(
                                  value: 'A+',
                                  child: Text('A+'),
                                ),
                                PopupMenuItem<String>(
                                  value: 'B+',
                                  child: Text('B+'),
                                ),
                                PopupMenuItem<String>(
                                  value: 'O+',
                                  child: Text('O+'),
                                ),
                                PopupMenuItem<String>(
                                  value: 'AB+',
                                  child: Text('AB+'),
                                ),
                                PopupMenuItem<String>(
                                  value: 'A-',
                                  child: Text('A-'),
                                ),
                                PopupMenuItem<String>(
                                  value: 'B-',
                                  child: Text('B-'),
                                ),
                                PopupMenuItem<String>(
                                  value: 'O-',
                                  child: Text('O-'),
                                ),
                                PopupMenuItem<String>(
                                  value: 'AB-',
                                  child: Text('AB-'),
                                ),
                              ],
                            ).then((value) {
                              if (value != null) {
                                print('Selected Blood Group: $value');
                              }
                            });
                          },
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black87),
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 8),
                            hintText: 'Blood Group',
                            hintStyle: TextStyle(
                              color: Color(0xFF727272),
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: Icon(Icons.bloodtype_outlined),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * 0.8,
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black87),
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 8),
                            hintText: 'Patient Name',
                            hintStyle: TextStyle(
                              color: Color(0xFF727272),
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: Icon(Icons.person_2_sharp),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * 0.8,
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: TextField(
                          readOnly: true, // Disable keyboard popup
                          onTap: () {
                            final RenderBox renderBox = context
                                .findRenderObject() as RenderBox;
                            final size = renderBox.size;
                            final position = RelativeRect.fromLTRB(
                              0,
                              size.height * 0.7,
                              0,
                              0,
                            );
                            showMenu<String>(
                              context: context,
                              position: position,
                              items: const [
                                PopupMenuItem<String>(
                                  value: 'A+',
                                  child: Text('A+'),
                                ),
                                PopupMenuItem<String>(
                                  value: 'B+',
                                  child: Text('B+'),
                                ),
                                PopupMenuItem<String>(
                                  value: 'O+',
                                  child: Text('O+'),
                                ),
                                PopupMenuItem<String>(
                                  value: 'AB+',
                                  child: Text('AB+'),
                                ),
                                PopupMenuItem<String>(
                                  value: 'A-',
                                  child: Text('A-'),
                                ),
                                PopupMenuItem<String>(
                                  value: 'B-',
                                  child: Text('B-'),
                                ),
                                PopupMenuItem<String>(
                                  value: 'O-',
                                  child: Text('O-'),
                                ),
                                PopupMenuItem<String>(
                                  value: 'AB-',
                                  child: Text('AB-'),
                                ),
                              ],
                            ).then((value) {
                              if (value != null) {
                                print('Selected Blood Group: $value');
                              }
                            });
                          },
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black87),
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 8),
                            hintText: 'Blood Type',
                            hintStyle: TextStyle(
                              color: Color(0xFF727272),
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: Icon(Icons.bloodtype_outlined),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * 0.8,
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black87),
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 8),
                            hintText: 'Attendee Mobile Number',
                            hintStyle: TextStyle(
                              color: Color(0xFF727272),
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: Icon(Icons.phone_android_sharp),
                          ),
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * 0.8,
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: TextField(
                          decoration: InputDecoration(
                            border: const UnderlineInputBorder(),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black87),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 20),
                            hintText: 'Required Date',
                            hintStyle: const TextStyle(
                              color: Color(0xFF727272),
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.calendar_today),
                              onPressed: () {
                                _selectDate(context);
                              },
                            ),
                          ),
                          controller: TextEditingController(
                            text: _selectedDate != null
                                ? "${_selectedDate?.toLocal()}".split(' ')[0]
                                : '',
                          ),
                          readOnly: true,
                        ),
                      ),
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * 0.8,
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: TextField(
                          readOnly: true, // Disable keyboard popup
                          onTap: () {
                            final RenderBox renderBox = context
                                .findRenderObject() as RenderBox;
                            final size = renderBox.size;
                            final position = RelativeRect.fromLTRB(
                              0,
                              size.height * 0.7,
                              0,
                              0,
                            );
                            showMenu<String>(
                              context: context,
                              position: position,
                              items: const [
                                PopupMenuItem<String>(
                                  value: '1',
                                  child: Text('1'),
                                ),
                                PopupMenuItem<String>(
                                  value: '2',
                                  child: Text('2'),
                                ),
                                PopupMenuItem<String>(
                                  value: '3',
                                  child: Text('3'),
                                ),
                                PopupMenuItem<String>(
                                  value: '4+',
                                  child: Text('4'),
                                ),
                                PopupMenuItem<String>(
                                  value: '5',
                                  child: Text('5'),
                                ),
                                PopupMenuItem<String>(
                                  value: '6',
                                  child: Text('6'),
                                ),
                                PopupMenuItem<String>(
                                  value: '7',
                                  child: Text('7'),
                                ),
                                PopupMenuItem<String>(
                                  value: '8',
                                  child: Text('8'),
                                ),
                              ],
                            ).then((value) {
                              if (value != null) {
                                print('Selected Blood Group: $value');
                              }
                            });
                          },
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black87),
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 8),
                            hintText: 'Select Units',
                            hintStyle: TextStyle(
                              color: Color(0xFF727272),
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: Icon(Icons.arrow_drop_down),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * 0.8,
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: TextField(
                          readOnly: true, // Disable keyboard popup
                          decoration: InputDecoration(
                            border: const UnderlineInputBorder(),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black87),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 8),
                            hintText: 'Please Select Location',
                            hintStyle: const TextStyle(
                              color: Color(0xFF727272),
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                // Add your desired functionality here
                                print('Location button pressed');
                              },
                              icon: const Icon(Icons.location_on_outlined),
                            ),
                          ),
                        ),
                      ),
                      // Toggle switch for a 'Critical' option
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * 0.8,
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 2,
                              child: GestureDetector(
                                onTap: () {},
                                child: const TextField(
                                  readOnly: true,
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black87),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 8),
                                    hintText: 'Critical',
                                    hintStyle: TextStyle(
                                      color: Color(0xFF727272),
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            ToggleSwitch(
                              minHeight: 30,
                              minWidth: 45,
                              cornerRadius: 20.0,
                              activeBgColors: [
                                [Colors.red[800]!],
                                [Colors.green[800]!]
                              ],
                              activeFgColor: Colors.white,
                              inactiveBgColor: Colors.grey,
                              inactiveFgColor: Colors.white,
                              initialLabelIndex: 1,
                              totalSwitches: 2,
                              labels: ['No', 'Yes'],
                              radiusStyle: true,
                              onToggle: (index) {
                                print('switched to: $index');
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * 0.8,
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black87),
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 8),
                            hintText: 'Additional note to donors',
                            hintStyle: TextStyle(
                              color: Color(0xFF727272),
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      // Checkbox for confirming agreement with terms
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            value: false,
                            // set it to true if you want the checkbox to be initially ticked
                            onChanged: (bool? value) {},
                          ),

                          const SizedBox(width: 5,),
                          const Text('I have read the agreed to these',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF727272)
                            ),
                          ),
                        ],
                      ),
                      // Text button for navigating to the terms of use and privacy policy
                      TextButton(
                        onPressed: () {},
                        child: const Text('Term of Use and Privacy Policy',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              color: Color(0xFFDE0A0A)
                          ),
                        ),
                      ),
                      // Custom floating action button for sending the blood request
                      FABR(
                        onPressed: () {
                          // Functionality for displaying a dialog box upon request submission
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(

                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),

                                // Displaying an image in the dialog
                                content: const SizedBox(
                                  height: 158,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .center,
                                    children: [
                                       Image(image: AssetImage(
                                          'lib/image/Check mark.png')),
                                      SizedBox(height: 20,),
                                      Text(
                                      'Thank You \nFor Blood Request',
                                      // Success message upon form submission
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                      Text('Requests are pending',
                                        // Information about pending requests
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Montserrat',
                                          fontSize: 10,
                                          color: Color(0xFF727272),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ).then((value) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (
                                  context) => const yourrequest()), // Navigating to the 'Your Requests' screen after the form submission
                            );
                          });
                        },
                        ButtonText: 'Send Request', // Text displayed on the button
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const appbar(),
      // Displaying the custom bottom app bar
      floatingActionButton: const float(),
      // Displaying the custom floating action button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

