// Profile Creation Page
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart'; // Importing the toggle switch package
import '8. Home.dart'; // Importing the Home page

// Profile StatelessWidget
class Profile extends StatelessWidget {
  const Profile({Key? key}); // Constructor for the Profile widget

  @override
  Widget build(BuildContext context) {
    // Retrieving screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    DateTime? _selectedDate; // Initializing the _selectedDate variable

    // Function to handle date selection
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

    // Scaffold widget for the page layout
    return Scaffold(
      body: Stack(
        children: [
          const Flex(
            direction: Axis.horizontal,
            // or Axis.horizontal, depending on your layout
            children: [
              Expanded(
                child: Image(
                  image: AssetImage('lib/image/back.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(height: screenHeight * 0.069,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
                    },
                    icon: const Icon(Icons.arrow_back_ios,
                      color: Colors.white,),
                    iconSize: 20,
                  ),
                  SizedBox(width: screenWidth * 0.25), // Adjust the width as needed
                  const Text(
                    'My Profile',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  const Spacer(), // This will take up any remaining space
                ],
              ),
              SizedBox(height: screenHeight * 0.030),
              const CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 59,
                  backgroundColor: Colors.transparent,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image(
                        image: AssetImage('lib/image/pic.png'),
                        height: 122,
                        width: 122,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 95, top: 95),
                        child: Icon(
                          Icons.camera_alt_rounded,
                          color: Colors.black87,
                          size: 27,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.018),
              Padding(
                padding: EdgeInsets.only(left: screenWidth *0.060),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Vivek Mathur',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat',
                          fontSize: 20,
                          color: Color(0xFF404040)),
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.edit_note)),
                  ],
                ),
              ),
              const Text(
                '+91 8632658956',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF404040)),
              ),
              SizedBox(height: screenHeight * 0.032),
              // SingleChildScrollView widget to enable scrolling
              SizedBox(
                height: screenHeight * 0.521,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      // Container for selecting gender
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        padding: EdgeInsets.symmetric(vertical: screenHeight * 0.006),
                        child: TextField(
                          readOnly: true, // Disable keyboard popup
                          onTap: () {
                            // Function to handle gender selection
                            final RenderBox renderBox = context.findRenderObject() as RenderBox;
                            final size = renderBox.size;
                            final position = RelativeRect.fromLTRB(
                              screenWidth * 1,
                              screenHeight * 0.480,
                              screenWidth * 0,
                              screenHeight * 0,
                            );
                            // Display a menu for selecting gender
                            showMenu<String>(
                              context: context,
                              position: position,
                              items: const [
                                PopupMenuItem<String>(
                                  value: 'Male',
                                  child: Text('Male'),
                                ),
                                PopupMenuItem<String>(
                                  value: 'Female',
                                  child: Text('Female'),
                                ),
                                PopupMenuItem<String>(
                                  value: 'Others',
                                  child: Text('Others'),
                                ),
                              ],
                            ).then((value) {
                              if (value != null) {
                                print('Selected Gender: $value');
                              }
                            });
                          },
                          decoration: InputDecoration(
                            border: const UnderlineInputBorder(),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black87),
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: screenHeight * 0.008),
                            hintText: 'Select Gender',
                            hintStyle: const TextStyle(
                              color: Color(0xFF727272),
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: const Icon(Icons.person),
                          ),
                        ),
                      ),
                      // Container for selecting blood group
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        padding: EdgeInsets.symmetric(vertical: screenHeight * 0.006),
                        child: TextField(
                          readOnly: true, // Disable keyboard popup
                          onTap: () {
                            // Function to handle blood group selection
                            final RenderBox renderBox = context.findRenderObject() as RenderBox;
                            final size = renderBox.size;
                            final position =  RelativeRect.fromLTRB(
                              screenWidth * 1,
                              screenHeight * 0.480,
                              screenWidth * 0,
                              screenHeight * 0,
                            );
                            // Display a menu for selecting blood group
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
                          decoration: InputDecoration(
                            border: const UnderlineInputBorder(),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black87),
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: screenHeight * 0.008),
                            hintText: 'Selected Blood Group',
                            hintStyle: const TextStyle(
                              color: Color(0xFF727272),
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: const Icon(Icons.bloodtype_outlined),
                          ),
                        ),
                      ),
                      // Stack for selecting date of birth
                      Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            padding: EdgeInsets.symmetric(vertical:screenHeight * 0.006),
                            child: TextField(
                              decoration:  InputDecoration(
                                border: const UnderlineInputBorder(),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black87),
                                ),
                                contentPadding:  EdgeInsets.symmetric( vertical: screenHeight * 0.020),
                                hintText: 'Date of Birth',
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
                        ],
                      ),
                      // Container for selecting location
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        padding:  EdgeInsets.symmetric(vertical: screenHeight * 0.006),
                        child: TextField(
                          readOnly: true, // Disable keyboard popup
                          decoration: InputDecoration(
                            border: const UnderlineInputBorder(),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black87),
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: screenHeight * 0.008),
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
                      // Container for donating blood toggle switch
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * 0.8,
                        padding:  EdgeInsets.symmetric(vertical: screenHeight * 0.006),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 2,
                              child: GestureDetector(
                                onTap: () {
                                },
                                child:  TextField(
                                  readOnly: true,
                                  decoration: InputDecoration(
                                    border: const UnderlineInputBorder(),
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black87),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: screenHeight * 0.008),
                                    hintText: 'I want to Donate Blood',
                                    hintStyle: const TextStyle(
                                      color: Color(0xFF727272),
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            // ToggleSwitch for selecting donation option
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
                      // Container for email address input
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        padding: EdgeInsets.symmetric(vertical: screenHeight * 0.006),
                        child: TextField(
                          decoration: InputDecoration(
                            border: const UnderlineInputBorder(),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black87),
                            ),
                            contentPadding: EdgeInsets.symmetric( vertical: screenHeight * 0.008),
                            hintText: 'Email Address',
                            hintStyle: const TextStyle(
                              color: Color(0xFF727272),
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: const Icon(Icons.email_outlined),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      // Container for additional information input
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        padding:  EdgeInsets.symmetric(vertical: screenHeight * 0.006),
                        child: TextField(
                          decoration: InputDecoration(
                            border: const UnderlineInputBorder(),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black87),
                            ),
                            contentPadding: EdgeInsets.symmetric( vertical: screenHeight * 0.008),
                            hintText: 'About',
                            hintStyle: const TextStyle(
                              color: Color(0xFF727272),
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: const Icon(Icons.info_outline_rounded),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.030),
                      const SizedBox(height: 32,),
                      const Padding(padding: EdgeInsets.only(left: 40),
                        child: Column(
                          children:[
                            Row(
                              children:[
                                Text('Crafted in India',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14,
                                      color: Colors.grey
                                  ),
                                ),
                                SizedBox(width: 5),
                                Image(image: NetworkImage('https://th.bing.com/th?id=OIP.D_RBvB9V4O3UH0z-4iVJkAAAAA&w=298&h=204&c=12&rs=1&qlt=99&pcl=faf9f7&o=6&dpr=1.3&pid=CDDominant'),
                                  height: 20,
                                  width: 20,
                                ),
                                Text(' with Love',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14,
                                      color: Colors.grey
                                  ),
                                ),
                                SizedBox(width: 5),
                                Icon(CupertinoIcons.heart_solid,
                                  color: Color(0xFFDE0A0A),),
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
            ],
          ),
        ],
      ),
    );
  }
}
