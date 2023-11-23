import 'package:flutter/material.dart';
import '../widgets/bottomappbar.dart';
import '../widgets/floatingactionbutton.dart';
import '22. Chat.dart';
import '8. Home.dart';
class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          const Image( // BackGround Image
            image: AssetImage('lib/image/back2.png'),
            fit: BoxFit.cover,
            width: 800,
          ),
          Column(
            children: [
              const SizedBox(width: 20, height: 69,),
              Row( // Header row
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
                    'Chat',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              SizedBox( // Height of Scroller
                height: screenHeight * 0.785,
                child: SingleChildScrollView( // Scroller for Chat widget
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      GestureDetector(// Gesture Detection for navigation to chat
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const chat()),
                          );
                        },
                        child: Column(
                          children: [
                            Container( //Container for Chat list
                              height: 80,
                              color: Colors.white,
                              child: Row(
                                children: [
                                  const SizedBox(width: 20,),
                                  const CircleAvatar( // image for chat
                                    child: Image(
                                        image: AssetImage('lib/image/pic.png')),
                                  ),
                                  const SizedBox(width: 20,),
                                  RichText(
                                    textAlign: TextAlign.start,
                                    text: const TextSpan(
                                      style: TextStyle(),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Devansh Goel', // name of chat
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\nYou: Oh finally a human, wohoo!', // last message of chat
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 10,
                                              color: Colors.grey
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),

                      ),
                      GestureDetector(// Gesture Detection for navigation to chat
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const chat()),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              color: Colors.white,
                              child: Row(
                                children: [
                                  const SizedBox(width: 20,),
                                  const CircleAvatar(
                                    child: Image(
                                        image: AssetImage('lib/image/pic.png')),
                                  ),
                                  const SizedBox(width: 20,),
                                  RichText(
                                    textAlign: TextAlign.start,
                                    text: const TextSpan(
                                      style: TextStyle(),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Vikas Pandey',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\nYou: Oh finally a human, wohoo!',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 10,
                                              color: Colors.grey
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),

                      ),
                      GestureDetector(// Gesture Detection for navigation to chat
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const chat()),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              color: Colors.white,
                              child: Row(
                                children: [
                                  const SizedBox(width: 20,),
                                  const CircleAvatar(
                                    child: Image(
                                        image: AssetImage('lib/image/person.png')),
                                  ),
                                  const SizedBox(width: 20,),
                                  RichText(
                                    textAlign: TextAlign.start,
                                    text: const TextSpan(
                                      style: TextStyle(),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'sanjay',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\nYou: Oh finally a human, wohoo!',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 10,
                                              color: Colors.grey
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),

                      ),
                      GestureDetector(// Gesture Detection for navigation to chat
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const chat()),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              color: Colors.white,
                              child: Row(
                                children: [
                                  const SizedBox(width: 20,),
                                  const CircleAvatar(
                                    child: Image(
                                        image: AssetImage('lib/image/bloodinfo.png')),
                                  ),
                                  const SizedBox(width: 20,),
                                  RichText(
                                    textAlign: TextAlign.start,
                                    text: const TextSpan(
                                      style: TextStyle(),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Amit',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\nYou: Oh finally a human, wohoo!',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 10,
                                              color: Colors.grey
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),

                      ),
                      GestureDetector(// Gesture Detection for navigation to chat
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const chat()),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              color: Colors.white,
                              child: Row(
                                children: [
                                  const SizedBox(width: 20,),
                                  const CircleAvatar(
                                    child: Image(
                                        image: AssetImage('lib/image/appo.png')),
                                  ),
                                  const SizedBox(width: 20,),
                                  RichText(
                                    textAlign: TextAlign.start,
                                    text: const TextSpan(
                                      style: TextStyle(),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Prakash',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\nYou: Oh finally a human, wohoo!',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 10,
                                              color: Colors.grey
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),

                      ),
                      GestureDetector(// Gesture Detection for navigation to chat
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const chat()),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              color: Colors.white,
                              child: Row(
                                children: [
                                  const SizedBox(width: 20,),
                                  const CircleAvatar(
                                    child: Image(
                                        image: AssetImage('lib/image/heart.png')),
                                  ),
                                  const SizedBox(width: 20,),
                                  RichText(
                                    textAlign: TextAlign.start,
                                    text: const TextSpan(
                                      style: TextStyle(),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Rachit',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\nYou: Oh finally a human, wohoo!',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 10,
                                              color: Colors.grey
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),

                      ),
                      GestureDetector(// Gesture Detection for navigation to chat
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const chat()),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              color: Colors.white,
                              child: Row(
                                children: [
                                  const SizedBox(width: 20,),
                                  const CircleAvatar(
                                    child: Image(
                                        image: AssetImage('lib/image/pic.png')),
                                  ),
                                  const SizedBox(width: 20,),
                                  RichText(
                                    textAlign: TextAlign.start,
                                    text: const TextSpan(
                                      style: TextStyle(),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Rohan',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\nYou: Oh finally a human, wohoo!',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 10,
                                              color: Colors.grey
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),

                      ),
                      GestureDetector(// Gesture Detection for navigation to chat
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const chat()),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              color: Colors.white,
                              child: Row(
                                children: [
                                  const SizedBox(width: 20,),
                                  const CircleAvatar(
                                    child: Image(
                                        image: AssetImage('lib/image/pic.png')),
                                  ),
                                  const SizedBox(width: 20,),
                                  RichText(
                                    textAlign: TextAlign.start,
                                    text: const TextSpan(
                                      style: TextStyle(),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Jatin Kumar',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\nYou: Oh finally a human, wohoo!',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 10,
                                              color: Colors.grey
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),

                      ),
                      GestureDetector(// Gesture Detection for navigation to chat
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const chat()),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              color: Colors.white,
                              child: Row(
                                children: [
                                  const SizedBox(width: 20,),
                                  const CircleAvatar(
                                    child: Image(
                                        image: AssetImage('lib/image/pic.png')),
                                  ),
                                  const SizedBox(width: 20,),
                                  RichText(
                                    textAlign: TextAlign.start,
                                    text: const TextSpan(
                                      style: TextStyle(),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Jatin Kumar',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\nYou: Oh finally a human, wohoo!',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 10,
                                              color: Colors.grey
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),

                      ),
                      GestureDetector(// Gesture Detection for navigation to chat
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const chat()),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              color: Colors.white,
                              child: Row(
                                children: [
                                  const SizedBox(width: 20,),
                                  const CircleAvatar(
                                    child: Image(
                                        image: AssetImage('lib/image/pic.png')),
                                  ),
                                  const SizedBox(width: 20,),
                                  RichText(
                                    textAlign: TextAlign.start,
                                    text: const TextSpan(
                                      style: TextStyle(),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Jatin Kumar',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\nYou: Oh finally a human, wohoo!',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 10,
                                              color: Colors.grey
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),

                      ),
                      GestureDetector(// Gesture Detection for navigation to chat
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const chat()),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              color: Colors.white,
                              child: Row(
                                children: [
                                  const SizedBox(width: 20,),
                                  const CircleAvatar(
                                    child: Image(
                                        image: AssetImage('lib/image/pic.png')),
                                  ),
                                  const SizedBox(width: 20,),
                                  RichText(
                                    textAlign: TextAlign.start,
                                    text: const TextSpan(
                                      style: TextStyle(),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Jatin Kumar',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\nYou: Oh finally a human, wohoo!',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 10,
                                              color: Colors.grey
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),

                      ),
                      GestureDetector(// Gesture Detection for navigation to chat
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const chat()),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              color: Colors.white,
                              child: Row(
                                children: [
                                  const SizedBox(width: 20,),
                                  const CircleAvatar(
                                    child: Image(
                                        image: AssetImage('lib/image/pic.png')),
                                  ),
                                  const SizedBox(width: 20,),
                                  RichText(
                                    textAlign: TextAlign.start,
                                    text: const TextSpan(
                                      style: TextStyle(),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Jatin Kumar',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\nYou: Oh finally a human, wohoo!',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 10,
                                              color: Colors.grey
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),

                      ),
                      GestureDetector(// Gesture Detection for navigation to chat
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const chat()),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              color: Colors.white,
                              child: Row(
                                children: [
                                  const SizedBox(width: 20,),
                                  const CircleAvatar(
                                    child: Image(
                                        image: AssetImage('lib/image/pic.png')),
                                  ),
                                  const SizedBox(width: 20,),
                                  RichText(
                                    textAlign: TextAlign.start,
                                    text: const TextSpan(
                                      style: TextStyle(),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Jatin Kumar',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\nYou: Oh finally a human, wohoo!',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 10,
                                              color: Colors.grey
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),

                      ),
                    ],
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
