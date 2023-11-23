import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart'; // Importing necessary packages
import '../widgets/FABR.dart'; // Importing custom widget FABR
import '15. YourRequestsCompleted.dart'; // Importing the 'YourRequestsCompleted' screen
// Defining a StatelessWidget named 'feedback'
class feedback extends StatelessWidget {
  feedback({super.key}); // Constructor for the 'feedback' class

  // Build method that returns the UI structure for the 'feedback' screen
  String feedbackText = ""; // Variable to store dynamic feedback text
  @override
  Widget build(BuildContext context) {
    // Scaffold widget for basic page structure
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children:[
            Stack(
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
              Row( // Header of the Page
                children: [
                  // IconButton for creating a clickable icon
                  IconButton(
                    onPressed: () {
                      // Navigation to another screen on icon button press
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const completed()), // Navigating to 'completed' screen
                      );
                    },
                    icon: const Icon(Icons.arrow_back_ios_new, // Icon for the button
                      color: Colors.white, // Color of the icon
                    ),
                  ),
                  const SizedBox(width: 16), // Adding space between widgets
                  const Text('FeedBack', // Text widget to display text
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 62,),// Adding space between widgets
              Container(
                width: 334,//width of container
                height: 178,//height of container
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: const Color(0xFFDBDBDB), width: 1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 33,),
                    const Text('Your Request was Successful',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat',
                          fontSize: 20,
                          color: Color(0xFF404040)
                      ),
                    ),
                    const SizedBox(height: 4,),
                    const Text('My Blood Donation was excellent',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          color: Color(0xFF404040)
                      ),
                    ),
                    const SizedBox(height: 30,),
                    RatingBar.builder( // Star Rating
                      initialRating: 5,
                      minRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 33,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                      itemBuilder: (context, _) =>
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        updateFeedbackText(rating); // Call the method to update feedback text
                        print(rating);
                      },
                    ),

                    Text(
                      feedbackText, // Display dynamic feedback text
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),

                  ],
                ),
              ),
              const SizedBox(height: 32,),
              const Padding(padding: EdgeInsets.only(right: 150),
                child: Text('What Impressed You?',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector( //Buttons for Rating
                        onTap: (){},

                        child: Container(
                          width: 158,
                          height: 31,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: const Color(0xFFDBDBDB), width: 1),
                          ),
                          alignment: Alignment.center,
                          child: const Text("Donor's Behaviour",
                            style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF404040)
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 21,),
                      GestureDetector(
                        onTap: (){},

                        child: Container(
                          width: 158,
                          height: 31,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: const Color(0xFFDBDBDB), width: 1),
                          ),
                          alignment: Alignment.center,
                          child: const Text('Response Time',
                            style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF404040)
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){},

                        child: Container(
                          width: 158,
                          height: 31,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: const Color(0xFFDBDBDB), width: 1),
                          ),
                          alignment: Alignment.center,
                          child: const Text('Clean History',
                            style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF404040)
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 21,),
                      GestureDetector(
                        onTap: (){},

                        child: Container(
                          width: 158,
                          height: 31,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: const Color(0xFFDBDBDB), width: 1),
                          ),
                          alignment: Alignment.center,
                          child: const Text('TruthFul',
                            style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF404040)
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 32,),
              const Padding(padding: EdgeInsets.only(right: 150),
                child: Text('Add Detailed Review',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              Container( //Container of review
                width: 335,
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: const Color(0xFFDBDBDB), width: 1),
                ),
                child: const TextField(
                  maxLines: 6,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 10, bottom: 15),
                    hintText: 'Write here',
                    hintStyle: TextStyle(
                      color: Color(0xFF727272),
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 52,),
              FABR( // For submitting Feedback
                onPressed: () {  },
                ButtonText: 'Submit',
              ),
              // Adding more widgets to the column
              // Similar pattern follows for the remaining sections of the code
            ],
          ),
        ],
      ),
      ],
    ),
      ),
    );
  }
  // Method to update feedback text based on rating
  void updateFeedbackText(double rating) {
    if (rating >= 4.0) {
      feedbackText = "Excellent! We appreciate your positive feedback.";
    } else if (rating >= 3.0) {
      feedbackText = "Thank you for your feedback. We're always looking to improve.";
    } else {
      feedbackText = "We're sorry to hear that. Please let us know how we can do better.";
    }
  }
}
