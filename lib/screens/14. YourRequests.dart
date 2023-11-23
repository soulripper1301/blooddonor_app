// Your Request Page
// Imports for necessary packages and custom widgets
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/bottomappbar.dart';
import '../widgets/floatingactionbutton.dart';
import '15. YourRequestsCompleted.dart';
import '16. requestId.dart';
import '8. Home.dart';

// Class for the 'Your Requests' screen
class yourrequest extends StatelessWidget {
  const yourrequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // Scaffold with a stack for layering different widgets
      body: Stack(
        children: [
          const Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(
                // Background image
                child: Image(
                  image: AssetImage('lib/image/back2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(width: 20, height: 69),
              Row(
                children: [
                  // Back button leading to the Home screen
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
                  const Text('Your Requests',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.280),
                  // Dropdown menu for filtering requests based on status
                  OutlinedButton(
                    onPressed: () {
                      showMenu(
                        context: context,
                        position: const RelativeRect.fromLTRB(100, 130, 0, 0), // Adjust the position as per your requirement
                        items: [
                          const PopupMenuItem(
                            value: 1,
                            child: Row(
                              children: [
                                Icon(Icons.circle,
                                  color: Color(0xFF299703),
                                  size: 5,
                                ),
                                Text('Active',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    color: Color(0xFF404040),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const PopupMenuItem(
                            value: 2,
                            child: Row(
                              children: [
                                Icon(Icons.circle,
                                  color: Color(0xFFD9D9D9),
                                  size: 5,
                                ),
                                Text('InActive',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    color: Color(0xFF404040),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const PopupMenuItem(
                            value: 3,
                            child: Row(
                              children: [
                                Icon(Icons.circle,
                                  color: Color(0xFFFFAF65),
                                  size: 5,
                                ),
                                Text('In Progress',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    color: Color(0xFF404040),
                                  ),
                                )
                              ],
                            ),
                          ),
                          PopupMenuItem(
                            value: 4,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const completed()),
                                );
                              },
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: Color(0xFF428BCA),
                                    size: 5,
                                  ),
                                  Text(
                                    'Completed',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Montserrat',
                                      fontSize: 12,
                                      color: Color(0xFF404040),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // Add more PopupMenuItems as needed
                        ],
                      );
                    },
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        const BorderSide(color: Colors.transparent, width: 2),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                    ),
                    child: const Image(image: AssetImage('lib/image/dropdown.png')), // Dropdown icon
                  ),
                ],
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 661,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 32),
                  Container(
                          width: 335,
                          height: 122,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: const Color(0xFFDBDBDB), width: 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                              GestureDetector(
                              onTap: (){
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const requestid()),
                        );
                        },
                          child:
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Container(
                                    width: 79,
                                    height: 68,

                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color(0xFFDE0A0A),
                                    ),
                                    alignment: Alignment.center,
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: const TextSpan(
                                        style: TextStyle(),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '8th',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '\nOCT',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '\n2023',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              ),
                              const SizedBox(width: 16,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const requestid()),
                              );
                            },
                            child:
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  RichText(
                                    text: const TextSpan(
                                      style: TextStyle(
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(text: 'Sohan',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 14,
                                              color: Colors.black
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\n2 Units (Bloods) \nAIIMS Hospital, Ansari Nagar , \nNoida, Uttar Pradesh',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 10,
                                              color: Color(0xFF727272)
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                          ),
                              const SizedBox(width: 14,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Row(
                                    children: [
                                      Icon(Icons.circle,
                                        color: Color(0xFF299703),
                                        size: 5,
                                      ),
                                      Text('Active',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Montserrat',
                                          fontSize: 10,
                                          color: Color(0xFF404040),
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 10,),
                                  const Image(
                                    image: AssetImage(
                                        'lib/image/bloodinfo.png'),
                                    width: 24,
                                    height: 24,
                                  ),
                                  const SizedBox(height: 10,),
                                  GestureDetector(
                                    onTap: (){
                                      print('Notification');
                                    },
                                    child:Icon(CupertinoIcons.bell,
                                    size: 16,
                                    color: Colors.black,
                                  ),
                                  ),
                                  const SizedBox(height: 10,),
                                  GestureDetector(
                                    onTap: (){
                                      print('share');
                                    },
                                  child: const Icon(Icons.share_outlined,
                                    size: 16,
                                    color: Colors.black,
                                  ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                      const SizedBox(height: 20),
                      Container(
                        width: 335,
                        height: 122,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: const Color(0xFFDBDBDB), width: 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const requestid()),
                                );
                              },
                              child:
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Container(
                                    width: 79,
                                    height: 68,

                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color(0xFFDE0A0A),
                                    ),
                                    alignment: Alignment.center,
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: const TextSpan(
                                        style: TextStyle(),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '8th',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '\nOCT',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '\n2023',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16,),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const requestid()),
                                );
                              },
                              child:
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  RichText(
                                    text: const TextSpan(
                                      style: TextStyle(
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(text: 'Sohan',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 14,
                                              color: Colors.black
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\n2 Units (Bloods) \nAIIMS Hospital, Ansari Nagar , \nNoida, Uttar Pradesh',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 10,
                                              color: Color(0xFF727272)
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 14,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Row(
                                  children: [
                                    Icon(Icons.circle,
                                      color: Color(0xFF299703),
                                      size: 5,
                                    ),
                                    Text('Active',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 10,
                                        color: Color(0xFF404040),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10,),
                                const Image(
                                  image: AssetImage(
                                      'lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                                const SizedBox(height: 10,),
                                GestureDetector(
                                  onTap: (){
                                    print('Notification');
                                  },
                                  child:Icon(CupertinoIcons.bell,
                                    size: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 10,),
                                GestureDetector(
                                  onTap: (){
                                    print('share');
                                  },
                                  child: const Icon(Icons.share_outlined,
                                    size: 16,
                                    color: Colors.black,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: 335,
                        height: 122,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: const Color(0xFFDBDBDB), width: 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const requestid()),
                                );
                              },
                              child:
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Container(
                                    width: 79,
                                    height: 68,

                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color(0xFFDE0A0A),
                                    ),
                                    alignment: Alignment.center,
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: const TextSpan(
                                        style: TextStyle(),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '8th',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '\nOCT',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '\n2023',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16,),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const requestid()),
                                );
                              },
                              child:
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  RichText(
                                    text: const TextSpan(
                                      style: TextStyle(
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(text: 'Sohan',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 14,
                                              color: Colors.black
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\n2 Units (Bloods) \nAIIMS Hospital, Ansari Nagar , \nNoida, Uttar Pradesh',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 10,
                                              color: Color(0xFF727272)
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 14,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Row(
                                  children: [
                                    Icon(Icons.circle,
                                      color: Color(0xFF299703),
                                      size: 5,
                                    ),
                                    Text('Active',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 10,
                                        color: Color(0xFF404040),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10,),
                                const Image(
                                  image: AssetImage(
                                      'lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                                const SizedBox(height: 10,),
                                GestureDetector(
                                  onTap: (){
                                    print('Notification');
                                  },
                                  child:Icon(CupertinoIcons.bell,
                                    size: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 10,),
                                GestureDetector(
                                  onTap: (){
                                    print('share');
                                  },
                                  child: const Icon(Icons.share_outlined,
                                    size: 16,
                                    color: Colors.black,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: 335,
                        height: 122,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: const Color(0xFFDBDBDB), width: 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const requestid()),
                                );
                              },
                              child:
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Container(
                                    width: 79,
                                    height: 68,

                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color(0xFFDE0A0A),
                                    ),
                                    alignment: Alignment.center,
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: const TextSpan(
                                        style: TextStyle(),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '8th',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '\nOCT',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '\n2023',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16,),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const requestid()),
                                );
                              },
                              child:
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  RichText(
                                    text: const TextSpan(
                                      style: TextStyle(
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(text: 'Sohan',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 14,
                                              color: Colors.black
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\n2 Units (Bloods) \nAIIMS Hospital, Ansari Nagar , \nNoida, Uttar Pradesh',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 10,
                                              color: Color(0xFF727272)
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 14,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Row(
                                  children: [
                                    Icon(Icons.circle,
                                      color: Color(0xFF299703),
                                      size: 5,
                                    ),
                                    Text('Active',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 10,
                                        color: Color(0xFF404040),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10,),
                                const Image(
                                  image: AssetImage(
                                      'lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                                const SizedBox(height: 10,),
                                GestureDetector(
                                  onTap: (){
                                    print('Notification');
                                  },
                                  child:Icon(CupertinoIcons.bell,
                                    size: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 10,),
                                GestureDetector(
                                  onTap: (){
                                    print('share');
                                  },
                                  child: const Icon(Icons.share_outlined,
                                    size: 16,
                                    color: Colors.black,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: 335,
                        height: 122,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: const Color(0xFFDBDBDB), width: 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const requestid()),
                                );
                              },
                              child:
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Container(
                                    width: 79,
                                    height: 68,

                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color(0xFFDE0A0A),
                                    ),
                                    alignment: Alignment.center,
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: const TextSpan(
                                        style: TextStyle(),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '8th',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '\nOCT',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '\n2023',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16,),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const requestid()),
                                );
                              },
                              child:
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  RichText(
                                    text: const TextSpan(
                                      style: TextStyle(
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(text: 'Sohan',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 14,
                                              color: Colors.black
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\n2 Units (Bloods) \nAIIMS Hospital, Ansari Nagar , \nNoida, Uttar Pradesh',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 10,
                                              color: Color(0xFF727272)
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 14,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Row(
                                  children: [
                                    Icon(Icons.circle,
                                      color: Color(0xFF299703),
                                      size: 5,
                                    ),
                                    Text('Active',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 10,
                                        color: Color(0xFF404040),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10,),
                                const Image(
                                  image: AssetImage(
                                      'lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                                const SizedBox(height: 10,),
                                GestureDetector(
                                  onTap: (){
                                    print('Notification');
                                  },
                                  child:Icon(CupertinoIcons.bell,
                                    size: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 10,),
                                GestureDetector(
                                  onTap: (){
                                    print('share');
                                  },
                                  child: const Icon(Icons.share_outlined,
                                    size: 16,
                                    color: Colors.black,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: 335,
                        height: 122,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: const Color(0xFFDBDBDB), width: 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const requestid()),
                                );
                              },
                              child:
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Container(
                                    width: 79,
                                    height: 68,

                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color(0xFFDE0A0A),
                                    ),
                                    alignment: Alignment.center,
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: const TextSpan(
                                        style: TextStyle(),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '8th',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '\nOCT',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '\n2023',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16,),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const requestid()),
                                );
                              },
                              child:
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  RichText(
                                    text: const TextSpan(
                                      style: TextStyle(
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(text: 'Sohan',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 14,
                                              color: Colors.black
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\n2 Units (Bloods) \nAIIMS Hospital, Ansari Nagar , \nNoida, Uttar Pradesh',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 10,
                                              color: Color(0xFF727272)
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 14,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Row(
                                  children: [
                                    Icon(Icons.circle,
                                      color: Color(0xFF299703),
                                      size: 5,
                                    ),
                                    Text('Active',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 10,
                                        color: Color(0xFF404040),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10,),
                                const Image(
                                  image: AssetImage(
                                      'lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                                const SizedBox(height: 10,),
                                GestureDetector(
                                  onTap: (){
                                    print('Notification');
                                  },
                                  child:Icon(CupertinoIcons.bell,
                                    size: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 10,),
                                GestureDetector(
                                  onTap: (){
                                    print('share');
                                  },
                                  child: const Icon(Icons.share_outlined,
                                    size: 16,
                                    color: Colors.black,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: 335,
                        height: 122,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: const Color(0xFFDBDBDB), width: 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const requestid()),
                                );
                              },
                              child:
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Container(
                                    width: 79,
                                    height: 68,

                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color(0xFFDE0A0A),
                                    ),
                                    alignment: Alignment.center,
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: const TextSpan(
                                        style: TextStyle(),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '8th',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '\nOCT',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '\n2023',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16,),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const requestid()),
                                );
                              },
                              child:
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  RichText(
                                    text: const TextSpan(
                                      style: TextStyle(
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(text: 'Sohan',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 14,
                                              color: Colors.black
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\n2 Units (Bloods) \nAIIMS Hospital, Ansari Nagar , \nNoida, Uttar Pradesh',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 10,
                                              color: Color(0xFF727272)
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 14,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Row(
                                  children: [
                                    Icon(Icons.circle,
                                      color: Color(0xFF299703),
                                      size: 5,
                                    ),
                                    Text('Active',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 10,
                                        color: Color(0xFF404040),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10,),
                                const Image(
                                  image: AssetImage(
                                      'lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                                const SizedBox(height: 10,),
                                GestureDetector(
                                  onTap: (){
                                    print('Notification');
                                  },
                                  child:Icon(CupertinoIcons.bell,
                                    size: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 10,),
                                GestureDetector(
                                  onTap: (){
                                    print('share');
                                  },
                                  child: const Icon(Icons.share_outlined,
                                    size: 16,
                                    color: Colors.black,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: 335,
                        height: 122,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: const Color(0xFFDBDBDB), width: 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const requestid()),
                                );
                              },
                              child:
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Container(
                                    width: 79,
                                    height: 68,

                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color(0xFFDE0A0A),
                                    ),
                                    alignment: Alignment.center,
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: const TextSpan(
                                        style: TextStyle(),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '8th',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '\nOCT',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '\n2023',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16,),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const requestid()),
                                );
                              },
                              child:
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  RichText(
                                    text: const TextSpan(
                                      style: TextStyle(
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(text: 'Sohan',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 14,
                                              color: Colors.black
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\n2 Units (Bloods) \nAIIMS Hospital, Ansari Nagar , \nNoida, Uttar Pradesh',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              fontSize: 10,
                                              color: Color(0xFF727272)
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 14,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Row(
                                  children: [
                                    Icon(Icons.circle,
                                      color: Color(0xFF299703),
                                      size: 5,
                                    ),
                                    Text('Active',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 10,
                                        color: Color(0xFF404040),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10,),
                                const Image(
                                  image: AssetImage(
                                      'lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                                const SizedBox(height: 10,),
                                GestureDetector(
                                  onTap: (){
                                    print('Notification');
                                  },
                                  child:Icon(CupertinoIcons.bell,
                                    size: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 10,),
                                GestureDetector(
                                  onTap: (){
                                    print('share');
                                  },
                                  child: const Icon(Icons.share_outlined,
                                    size: 16,
                                    color: Colors.black,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Additional containers for more requests can be added here
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const appbar(), // Custom bottom app bar widget
      floatingActionButton: const float(), // Custom floating action button widget
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
