// Personal Details Page
import 'package:flutter/material.dart';
import '../widgets/text.dart'; // Importing custom text widget
import '../widgets/FABR.dart'; // Importing custom FABR widget
import '8. Home.dart'; // Importing the Home page

// MyDatePickerWidget StatefulWidget
class MyDatePickerWidget extends StatefulWidget {
  const MyDatePickerWidget({super.key});

  @override
  _MyDatePickerWidgetState createState() => _MyDatePickerWidgetState();
}

// _MyDatePickerWidgetState State class
class _MyDatePickerWidgetState extends State<MyDatePickerWidget> {
  DateTime _selectedDate = DateTime.now(); // Initializing the selected date variable

  // Function to handle date selection
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    // Updating the selected date
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Retrieving screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Scaffold widget for the page layout
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Displaying 'Great' text
              const Text(
                'Great',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF404040),
                ),
              ),
              SizedBox(height: screenHeight * 0.011), // Setting the height of the sized box based on the screen height

              // Displaying 'Fill more details to register as a Donor' text
              const Text(
                'Few More Steps to \nStart Helping',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  color: Color(0xFF727272),
                ),
              ),

              // Input fields for user details
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                child: Column(
                  children: [
                    // Text field for entering the first name
                    Padding(padding: EdgeInsets.symmetric(vertical: screenHeight * 0.006)),
                    TextField(
                      decoration: InputDecoration(
                        border: const UnderlineInputBorder(),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black87),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: screenWidth * 0.020, vertical: screenHeight * 0.008),
                        hintText: 'First Name',
                        hintStyle: const TextStyle(
                          color: Color(0xFF727272),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                        ),
                        suffixIcon: const Icon(Icons.person_2_outlined),
                      ),
                      keyboardType: TextInputType.text,
                    ),

                    // Text field for entering the last name
                    Padding(padding: EdgeInsets.symmetric(vertical: screenHeight * 0.006)),
                    TextField(
                      decoration: InputDecoration(
                        border: const UnderlineInputBorder(),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black87),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: screenWidth * 0.020, vertical: screenHeight * 0.008),
                        hintText: 'Last Name',
                        hintStyle: const TextStyle(
                          color: Color(0xFF727272),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                        ),
                        suffixIcon: const Icon(Icons.person_2_outlined),
                      ),
                      keyboardType: TextInputType.text,
                    ),

                    // Text field for selecting the date of birth
                    Stack(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: const UnderlineInputBorder(),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black87),
                            ),
                            contentPadding: EdgeInsets.symmetric(horizontal: screenWidth * 0.020, vertical: screenHeight * 0.020),
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
                                _selectDate(context); // Handling date selection
                              },
                            ),
                          ),
                          controller: TextEditingController(
                            text: _selectedDate != null ? "${_selectedDate.toLocal()}".split(' ')[0] : '',
                          ),
                          readOnly: true,
                        ),
                      ],
                    ),

                    // Text field for selecting blood group
                    Padding(padding: EdgeInsets.symmetric(vertical: screenHeight * 0.006)),
                    TextField(
                      decoration: InputDecoration(
                        border: const UnderlineInputBorder(),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black87),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: screenWidth * 0.020, vertical: screenHeight * 0.008),
                        hintText: 'Select Blood Group',
                        hintStyle: const TextStyle(
                          color: Color(0xFF727272),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                        ),
                        suffixIcon: PopupMenuButton<String>(
                          itemBuilder: (BuildContext context) {
                            return ['A+', 'B+', 'AB+', 'O+', 'A-', 'B-', 'AB-', 'O-'].map((String choice) {
                              return PopupMenuItem<String>(
                                value: choice,
                                child: Text(choice),
                              );
                            }).toList();
                          },
                          onSelected: (String value) {
                            print('Selected Blood Group: $value');
                          },
                        ),
                      ),
                      keyboardType: TextInputType.text,
                    ),

                    // Text field for selecting location
                    Padding(padding: EdgeInsets.symmetric(vertical: screenHeight * 0.006)),
                    TextField(
                      decoration: InputDecoration(
                        border: const UnderlineInputBorder(),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black87),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: screenWidth * 0.020, vertical: screenHeight * 0.008),
                        hintText: 'Please Select Location',
                        hintStyle: const TextStyle(
                          color: Color(0xFF727272),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.location_on_outlined),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                    ),

                    SizedBox(height: screenHeight * 0.064), // Setting the height of the sized box based on the screen height

                    // FABR button for continuing
                    FABR(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
                      },
                      ButtonText: 'Agree & Continue', // Setting the text for the FABR button
                    ),

                    SizedBox(height: screenHeight * 0.042), // Setting the height of the sized box based on the screen height

                    const text(), // Displaying custom text widget
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  // Running the application with the MyDatePickerWidget as the home page
  runApp(const MaterialApp(
    home: MyDatePickerWidget(),
  ));
}
