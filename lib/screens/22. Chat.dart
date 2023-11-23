import 'package:blood_app/screens/23.%20Chat%20page.dart';
import 'package:flutter/material.dart';
class chat extends StatelessWidget {
  const chat({super.key});

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
              Row( //Header Row
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChatList()),
                      );
                    },
                    icon: const Icon(Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 8),
                  const CircleAvatar(
                    child: Image(image: AssetImage('lib/image/pic.png')),
                  ),
                  const SizedBox(width: 11),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                      ),
                      children: <TextSpan>[ // Header Text
                        TextSpan(text: 'Jatin Kumar',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              color: Colors.white
                          ),
                        ),
                        TextSpan(
                          text: '\nUser id- iDB2365',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Montserrat',
                              fontSize: 8,
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 145,),
                  IconButton( // Icon Button for Calling
                    onPressed: () {},
                    icon: const Icon(Icons.phone,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 84.23),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: const EdgeInsets.only(left: 20),
                    child:
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CircleAvatar( //image for the Chat
                          child: Image(image: AssetImage('lib/image/pic.png')),
                        ),
                        const SizedBox(width: 10,),
                        Container( // Chat Boxes
                            width: 243,
                            height: 53,
                            padding: const EdgeInsets.only(left: 18),
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFFF2F2F2),
                            ),
                            child: const Text('👋 Hi there! How can I help?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                              ),
                            )

                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15.26),
                  Padding(padding: const EdgeInsets.only(left: 111),
                    child: Container(// Chat Boxes
                        width: 243,
                        height: 47,

                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: const Color(0xFFDE0A0A),
                        ),
                        child: const Text('I’m sorry bot, but you’re wrong',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              color: Colors.white
                          ),
                        )

                    ),
                  ),
                  const SizedBox(height: 14.26),
                  Padding(padding: const EdgeInsets.only(left: 111),
                    child: Container(// Chat Boxes
                        width: 244,
                        height: 47,

                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: const Color(0xFFDE0A0A),
                        ),
                        child: const Text('Can I talk to someone please?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              color: Colors.white
                          ),
                        )

                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(padding: const EdgeInsets.only(left: 20),
                    child:
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CircleAvatar(//image for the Chat
                          child: Image(image: AssetImage('lib/image/pic.png')),
                        ),
                        const SizedBox(width: 10,),
                        Container(// Chat Boxes
                            width: 288,
                            height: 95,
                            padding: const EdgeInsets.only(left: 18),
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFFF2F2F2),
                            ),
                            child: const Text(
                              'Hi there! I’m Hannah.\n   \n How can I help you?',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                              ),
                            )

                        ),
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(right: 160),
                    child: Text('Oct 23, 2023',//Time of Chat
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          color: Color(0xFF737376)
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(padding: const EdgeInsets.only(left: 111),
                    child: Container(// Chat Boxes
                        width: 220,
                        height: 47,

                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: const Color(0xFFDE0A0A),
                        ),
                        child: const Text('Oh finally a human, wohoo!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              color: Colors.white
                          ),
                        )

                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(left: 180),
                    child: Text('Just now・Not seen yet',//Time of Chat
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          fontFamily: 'Montserrat',
                          color: Color(0xFF737376)
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 199,),
              Container(

                height: 66,
                decoration: BoxDecoration(
                  color: const Color(0xFFFAFAFA),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: const Offset(
                          0, 0), // changes the position of the shadow
                    ),
                  ],
                ),
                alignment: Alignment.centerLeft,
                child: const Padding(padding: EdgeInsets.only(left: 10),
                  child:
                  TextField( // Bottom Text field for chat reply
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type a Reply...',
                    ),
                    keyboardType: TextInputType.text,
                    cursorColor: Color(0xFF727272),
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
