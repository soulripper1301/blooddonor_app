import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '10. viewme.dart';
class donaterequest extends StatelessWidget {
  const donaterequest({super.key});

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
                child: Image( // Header Background
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
                        MaterialPageRoute(builder: (context) => const helpme()),
                      );
                    },
                    icon: const Icon(Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Text('Donate Requests',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                    ),
                  ),

                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 712,
              child: SingleChildScrollView( // Scroller Widget for Container
                scrollDirection: Axis.vertical,
              child: Column(
                children:[
                Container(
                width: 335,//width of container
                height: 294,//height of container
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: const Color(0xFFDBDBDB), width: 1),
                ),
                child: Column( // content of table
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 24, width: 12,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 24,),
                            RichText(
                              textAlign: TextAlign.start,
                              text: const TextSpan(
                                style: TextStyle(),
                                children: <TextSpan>[

                                  TextSpan(
                                    text: 'Patient Name:',
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
                                    text: 'Blood Needed:',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      color: Color(0xFF404040),
                                    ),
                                  ),
                                  TextSpan(
                                    text: '\n2 Units',
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 24,),
                            Image(
                              image: AssetImage(
                                  'lib/image/bloodinfo.png'),
                              width: 24,
                              height: 24,
                            ),
                            SizedBox(height: 17,),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 138,
                        height: 37,
                        child: ElevatedButton( //Button for Acceptence of request
                            onPressed: (){
                              showDialog(
                                context: context, // context should be available in the current scope
                                builder: (BuildContext context) {
                                  return AlertDialog( // Alert box for Confirming
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    title: const Text(
                                      'Have you any Disease in your body',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF404040)
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    content:const SizedBox(
                                      height: 57,
                                      child: Column(
                                        children: [
                                          Text('Blood Pressure'),
                                          Text('Blood Pressure'),
                                          Text('Blood Pressure'),
                                        ],
                                      ),
                                    ),
                                    actions: [
                                      ElevatedButton(onPressed: (){}, child: const Text('Yes')),
                                      ElevatedButton(onPressed: (){}, child: const Text('No')),
                                    ],
                                  );
                                },
                              ).then((value) {
                                //Navigator.push(context,
                                 // MaterialPageRoute(builder: (context) => const yourrequest()),); // Replace YourNewPage with the actual new page you want to navigate to
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFDE0A0A), // Set the desired background color
                            ),
                            child: const Text('Accept',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Montserrat',
                              fontSize: 12,
                              color: Colors.white
                            ),
                            )
                        ),
                        ),
                        const SizedBox(width: 26,),
                        SizedBox(
                          width: 138,
                          height: 37,
                          child: ElevatedButton( //Button for Rejection of request
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFffffff), // Set the desired background color
                              ),
                              child: const Text('Reject',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    color: Color(0xFFDBDBDB)
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
                  const SizedBox(height: 20,),
                  Container(
                    width: 335,//width of container
                    height: 294,//height of container
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: const Color(0xFFDBDBDB), width: 1),
                    ),
                    child: Column( // content of table
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 24, width: 12,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 24,),
                                RichText(
                                  textAlign: TextAlign.start,
                                  text: const TextSpan(
                                    style: TextStyle(),
                                    children: <TextSpan>[

                                      TextSpan(
                                        text: 'Patient Name:',
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
                                        text: 'Blood Needed:',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Montserrat',
                                          fontSize: 14,
                                          color: Color(0xFF404040),
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\n2 Units',
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: 24,),
                                Image(
                                  image: AssetImage(
                                      'lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                                SizedBox(height: 17,),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 138,
                              height: 37,
                              child: ElevatedButton( //Button for Acceptence of request
                                  onPressed: (){
                                    showDialog(
                                      context: context, // context should be available in the current scope
                                      builder: (BuildContext context) {
                                        return AlertDialog( // Alert box for Confirming
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          title: const Text(
                                            'Have you any Disease in your body',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF404040)
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          content:const SizedBox(
                                            height: 57,
                                            child: Column(
                                              children: [
                                                Text('Blood Pressure'),
                                                Text('Blood Pressure'),
                                                Text('Blood Pressure'),
                                              ],
                                            ),
                                          ),
                                          actions: [
                                            ElevatedButton(onPressed: (){}, child: const Text('Yes')),
                                            ElevatedButton(onPressed: (){}, child: const Text('No')),
                                          ],
                                        );
                                      },
                                    ).then((value) {
                                      //Navigator.push(context,
                                      // MaterialPageRoute(builder: (context) => const yourrequest()),); // Replace YourNewPage with the actual new page you want to navigate to
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFDE0A0A), // Set the desired background color
                                  ),
                                  child: const Text('Accept',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                        color: Colors.white
                                    ),
                                  )
                              ),
                            ),
                            const SizedBox(width: 26,),
                            SizedBox(
                              width: 138,
                              height: 37,
                              child: ElevatedButton( //Button for Rejection of request
                                  onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFffffff), // Set the desired background color
                                  ),
                                  child: const Text('Reject',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                        color: Color(0xFFDBDBDB)
                                    ),
                                  )
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    width: 335,//width of container
                    height: 294,//height of container
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: const Color(0xFFDBDBDB), width: 1),
                    ),
                    child: Column( // content of table
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 24, width: 12,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 24,),
                                RichText(
                                  textAlign: TextAlign.start,
                                  text: const TextSpan(
                                    style: TextStyle(),
                                    children: <TextSpan>[

                                      TextSpan(
                                        text: 'Patient Name:',
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
                                        text: 'Blood Needed:',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Montserrat',
                                          fontSize: 14,
                                          color: Color(0xFF404040),
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\n2 Units',
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: 24,),
                                Image(
                                  image: AssetImage(
                                      'lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                                SizedBox(height: 17,),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 138,
                              height: 37,
                              child: ElevatedButton( //Button for Acceptence of request
                                  onPressed: (){
                                    showDialog(
                                      context: context, // context should be available in the current scope
                                      builder: (BuildContext context) {
                                        return AlertDialog( // Alert box for Confirming
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          title: const Text(
                                            'Have you any Disease in your body',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF404040)
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          content:const SizedBox(
                                            height: 57,
                                            child: Column(
                                              children: [
                                                Text('Blood Pressure'),
                                                Text('Blood Pressure'),
                                                Text('Blood Pressure'),
                                              ],
                                            ),
                                          ),
                                          actions: [
                                            ElevatedButton(onPressed: (){}, child: const Text('Yes')),
                                            ElevatedButton(onPressed: (){}, child: const Text('No')),
                                          ],
                                        );
                                      },
                                    ).then((value) {
                                      //Navigator.push(context,
                                      // MaterialPageRoute(builder: (context) => const yourrequest()),); // Replace YourNewPage with the actual new page you want to navigate to
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFDE0A0A), // Set the desired background color
                                  ),
                                  child: const Text('Accept',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                        color: Colors.white
                                    ),
                                  )
                              ),
                            ),
                            const SizedBox(width: 26,),
                            SizedBox(
                              width: 138,
                              height: 37,
                              child: ElevatedButton( //Button for Rejection of request
                                  onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFffffff), // Set the desired background color
                                  ),
                                  child: const Text('Reject',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                        color: Color(0xFFDBDBDB)
                                    ),
                                  )
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    width: 335,//width of container
                    height: 294,//height of container
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: const Color(0xFFDBDBDB), width: 1),
                    ),
                    child: Column( // content of table
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 24, width: 12,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 24,),
                                RichText(
                                  textAlign: TextAlign.start,
                                  text: const TextSpan(
                                    style: TextStyle(),
                                    children: <TextSpan>[

                                      TextSpan(
                                        text: 'Patient Name:',
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
                                        text: 'Blood Needed:',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Montserrat',
                                          fontSize: 14,
                                          color: Color(0xFF404040),
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\n2 Units',
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: 24,),
                                Image(
                                  image: AssetImage(
                                      'lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                                SizedBox(height: 17,),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 138,
                              height: 37,
                              child: ElevatedButton( //Button for Acceptence of request
                                  onPressed: (){
                                    showDialog(
                                      context: context, // context should be available in the current scope
                                      builder: (BuildContext context) {
                                        return AlertDialog( // Alert box for Confirming
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          title: const Text(
                                            'Have you any Disease in your body',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF404040)
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          content:const SizedBox(
                                            height: 57,
                                            child: Column(
                                              children: [
                                                Text('Blood Pressure'),
                                                Text('Blood Pressure'),
                                                Text('Blood Pressure'),
                                              ],
                                            ),
                                          ),
                                          actions: [
                                            ElevatedButton(onPressed: (){}, child: const Text('Yes')),
                                            ElevatedButton(onPressed: (){}, child: const Text('No')),
                                          ],
                                        );
                                      },
                                    ).then((value) {
                                      //Navigator.push(context,
                                      // MaterialPageRoute(builder: (context) => const yourrequest()),); // Replace YourNewPage with the actual new page you want to navigate to
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFDE0A0A), // Set the desired background color
                                  ),
                                  child: const Text('Accept',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                        color: Colors.white
                                    ),
                                  )
                              ),
                            ),
                            const SizedBox(width: 26,),
                            SizedBox(
                              width: 138,
                              height: 37,
                              child: ElevatedButton( //Button for Rejection of request
                                  onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFffffff), // Set the desired background color
                                  ),
                                  child: const Text('Reject',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                        color: Color(0xFFDBDBDB)
                                    ),
                                  )
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    width: 335,//width of container
                    height: 294,//height of container
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: const Color(0xFFDBDBDB), width: 1),
                    ),
                    child: Column( // content of table
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 24, width: 12,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 24,),
                                RichText(
                                  textAlign: TextAlign.start,
                                  text: const TextSpan(
                                    style: TextStyle(),
                                    children: <TextSpan>[

                                      TextSpan(
                                        text: 'Patient Name:',
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
                                        text: 'Blood Needed:',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Montserrat',
                                          fontSize: 14,
                                          color: Color(0xFF404040),
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\n2 Units',
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: 24,),
                                Image(
                                  image: AssetImage(
                                      'lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                                SizedBox(height: 17,),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 138,
                              height: 37,
                              child: ElevatedButton( //Button for Acceptence of request
                                  onPressed: (){
                                    showDialog(
                                      context: context, // context should be available in the current scope
                                      builder: (BuildContext context) {
                                        return AlertDialog( // Alert box for Confirming
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          title: const Text(
                                            'Have you any Disease in your body',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF404040)
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          content:const SizedBox(
                                            height: 57,
                                            child: Column(
                                              children: [
                                                Text('Blood Pressure'),
                                                Text('Blood Pressure'),
                                                Text('Blood Pressure'),
                                              ],
                                            ),
                                          ),
                                          actions: [
                                            ElevatedButton(onPressed: (){}, child: const Text('Yes')),
                                            ElevatedButton(onPressed: (){}, child: const Text('No')),
                                          ],
                                        );
                                      },
                                    ).then((value) {
                                      //Navigator.push(context,
                                      // MaterialPageRoute(builder: (context) => const yourrequest()),); // Replace YourNewPage with the actual new page you want to navigate to
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFDE0A0A), // Set the desired background color
                                  ),
                                  child: const Text('Accept',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                        color: Colors.white
                                    ),
                                  )
                              ),
                            ),
                            const SizedBox(width: 26,),
                            SizedBox(
                              width: 138,
                              height: 37,
                              child: ElevatedButton( //Button for Rejection of request
                                  onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFffffff), // Set the desired background color
                                  ),
                                  child: const Text('Reject',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                        color: Color(0xFFDBDBDB)
                                    ),
                                  )
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    width: 335,//width of container
                    height: 294,//height of container
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: const Color(0xFFDBDBDB), width: 1),
                    ),
                    child: Column( // content of table
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 24, width: 12,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 24,),
                                RichText(
                                  textAlign: TextAlign.start,
                                  text: const TextSpan(
                                    style: TextStyle(),
                                    children: <TextSpan>[

                                      TextSpan(
                                        text: 'Patient Name:',
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
                                        text: 'Blood Needed:',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Montserrat',
                                          fontSize: 14,
                                          color: Color(0xFF404040),
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\n2 Units',
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: 24,),
                                Image(
                                  image: AssetImage(
                                      'lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                                SizedBox(height: 17,),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 138,
                              height: 37,
                              child: ElevatedButton( //Button for Acceptence of request
                                  onPressed: (){
                                    showDialog(
                                      context: context, // context should be available in the current scope
                                      builder: (BuildContext context) {
                                        return AlertDialog( // Alert box for Confirming
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          title: const Text(
                                            'Have you any Disease in your body',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF404040)
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          content:const SizedBox(
                                            height: 57,
                                            child: Column(
                                              children: [
                                                Text('Blood Pressure'),
                                                Text('Blood Pressure'),
                                                Text('Blood Pressure'),
                                              ],
                                            ),
                                          ),
                                          actions: [
                                            ElevatedButton(onPressed: (){}, child: const Text('Yes')),
                                            ElevatedButton(onPressed: (){}, child: const Text('No')),
                                          ],
                                        );
                                      },
                                    ).then((value) {
                                      //Navigator.push(context,
                                      // MaterialPageRoute(builder: (context) => const yourrequest()),); // Replace YourNewPage with the actual new page you want to navigate to
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFDE0A0A), // Set the desired background color
                                  ),
                                  child: const Text('Accept',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                        color: Colors.white
                                    ),
                                  )
                              ),
                            ),
                            const SizedBox(width: 26,),
                            SizedBox(
                              width: 138,
                              height: 37,
                              child: ElevatedButton( //Button for Rejection of request
                                  onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFffffff), // Set the desired background color
                                  ),
                                  child: const Text('Reject',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                        color: Color(0xFFDBDBDB)
                                    ),
                                  )
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    width: 335,//width of container
                    height: 294,//height of container
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: const Color(0xFFDBDBDB), width: 1),
                    ),
                    child: Column( // content of table
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 24, width: 12,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 24,),
                                RichText(
                                  textAlign: TextAlign.start,
                                  text: const TextSpan(
                                    style: TextStyle(),
                                    children: <TextSpan>[

                                      TextSpan(
                                        text: 'Patient Name:',
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
                                        text: 'Blood Needed:',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Montserrat',
                                          fontSize: 14,
                                          color: Color(0xFF404040),
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\n2 Units',
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: 24,),
                                Image(
                                  image: AssetImage(
                                      'lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                                SizedBox(height: 17,),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 138,
                              height: 37,
                              child: ElevatedButton( //Button for Acceptence of request
                                  onPressed: (){
                                    showDialog(
                                      context: context, // context should be available in the current scope
                                      builder: (BuildContext context) {
                                        return AlertDialog( // Alert box for Confirming
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          title: const Text(
                                            'Have you any Disease in your body',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF404040)
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          content:const SizedBox(
                                            height: 57,
                                            child: Column(
                                              children: [
                                                Text('Blood Pressure'),
                                                Text('Blood Pressure'),
                                                Text('Blood Pressure'),
                                              ],
                                            ),
                                          ),
                                          actions: [
                                            ElevatedButton(onPressed: (){}, child: const Text('Yes')),
                                            ElevatedButton(onPressed: (){}, child: const Text('No')),
                                          ],
                                        );
                                      },
                                    ).then((value) {
                                      //Navigator.push(context,
                                      // MaterialPageRoute(builder: (context) => const yourrequest()),); // Replace YourNewPage with the actual new page you want to navigate to
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFDE0A0A), // Set the desired background color
                                  ),
                                  child: const Text('Accept',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                        color: Colors.white
                                    ),
                                  )
                              ),
                            ),
                            const SizedBox(width: 26,),
                            SizedBox(
                              width: 138,
                              height: 37,
                              child: ElevatedButton( //Button for Rejection of request
                                  onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFffffff), // Set the desired background color
                                  ),
                                  child: const Text('Reject',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                        color: Color(0xFFDBDBDB)
                                    ),
                                  )
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    width: 335,//width of container
                    height: 294,//height of container
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: const Color(0xFFDBDBDB), width: 1),
                    ),
                    child: Column( // content of table
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 24, width: 12,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 24,),
                                RichText(
                                  textAlign: TextAlign.start,
                                  text: const TextSpan(
                                    style: TextStyle(),
                                    children: <TextSpan>[

                                      TextSpan(
                                        text: 'Patient Name:',
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
                                        text: 'Blood Needed:',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Montserrat',
                                          fontSize: 14,
                                          color: Color(0xFF404040),
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\n2 Units',
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: 24,),
                                Image(
                                  image: AssetImage(
                                      'lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                                SizedBox(height: 17,),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 138,
                              height: 37,
                              child: ElevatedButton( //Button for Acceptence of request
                                  onPressed: (){
                                    showDialog(
                                      context: context, // context should be available in the current scope
                                      builder: (BuildContext context) {
                                        return AlertDialog( // Alert box for Confirming
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          title: const Text(
                                            'Have you any Disease in your body',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF404040)
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          content:const SizedBox(
                                            height: 57,
                                            child: Column(
                                              children: [
                                                Text('Blood Pressure'),
                                                Text('Blood Pressure'),
                                                Text('Blood Pressure'),
                                              ],
                                            ),
                                          ),
                                          actions: [
                                            ElevatedButton(onPressed: (){}, child: const Text('Yes')),
                                            ElevatedButton(onPressed: (){}, child: const Text('No')),
                                          ],
                                        );
                                      },
                                    ).then((value) {
                                      //Navigator.push(context,
                                      // MaterialPageRoute(builder: (context) => const yourrequest()),); // Replace YourNewPage with the actual new page you want to navigate to
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFDE0A0A), // Set the desired background color
                                  ),
                                  child: const Text('Accept',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                        color: Colors.white
                                    ),
                                  )
                              ),
                            ),
                            const SizedBox(width: 26,),
                            SizedBox(
                              width: 138,
                              height: 37,
                              child: ElevatedButton( //Button for Rejection of request
                                  onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFffffff), // Set the desired background color
                                  ),
                                  child: const Text('Reject',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                        color: Color(0xFFDBDBDB)
                                    ),
                                  )
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    width: 335,//width of container
                    height: 294,//height of container
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: const Color(0xFFDBDBDB), width: 1),
                    ),
                    child: Column( // content of table
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 24, width: 12,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 24,),
                                RichText(
                                  textAlign: TextAlign.start,
                                  text: const TextSpan(
                                    style: TextStyle(),
                                    children: <TextSpan>[

                                      TextSpan(
                                        text: 'Patient Name:',
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
                                        text: 'Blood Needed:',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Montserrat',
                                          fontSize: 14,
                                          color: Color(0xFF404040),
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\n2 Units',
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: 24,),
                                Image(
                                  image: AssetImage(
                                      'lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                                SizedBox(height: 17,),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 138,
                              height: 37,
                              child: ElevatedButton( //Button for Acceptence of request
                                  onPressed: (){
                                    showDialog(
                                      context: context, // context should be available in the current scope
                                      builder: (BuildContext context) {
                                        return AlertDialog( // Alert box for Confirming
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          title: const Text(
                                            'Have you any Disease in your body',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF404040)
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          content:const SizedBox(
                                            height: 57,
                                            child: Column(
                                              children: [
                                                Text('Blood Pressure'),
                                                Text('Blood Pressure'),
                                                Text('Blood Pressure'),
                                              ],
                                            ),
                                          ),
                                          actions: [
                                            ElevatedButton(onPressed: (){}, child: const Text('Yes')),
                                            ElevatedButton(onPressed: (){}, child: const Text('No')),
                                          ],
                                        );
                                      },
                                    ).then((value) {
                                      //Navigator.push(context,
                                      // MaterialPageRoute(builder: (context) => const yourrequest()),); // Replace YourNewPage with the actual new page you want to navigate to
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFDE0A0A), // Set the desired background color
                                  ),
                                  child: const Text('Accept',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                        color: Colors.white
                                    ),
                                  )
                              ),
                            ),
                            const SizedBox(width: 26,),
                            SizedBox(
                              width: 138,
                              height: 37,
                              child: ElevatedButton( //Button for Rejection of request
                                  onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFffffff), // Set the desired background color
                                  ),
                                  child: const Text('Reject',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                        color: Color(0xFFDBDBDB)
                                    ),
                                  )
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    width: 335,//width of container
                    height: 294,//height of container
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: const Color(0xFFDBDBDB), width: 1),
                    ),
                    child: Column( // content of table
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 24, width: 12,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 24,),
                                RichText(
                                  textAlign: TextAlign.start,
                                  text: const TextSpan(
                                    style: TextStyle(),
                                    children: <TextSpan>[

                                      TextSpan(
                                        text: 'Patient Name:',
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
                                        text: 'Blood Needed:',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Montserrat',
                                          fontSize: 14,
                                          color: Color(0xFF404040),
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\n2 Units',
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: 24,),
                                Image(
                                  image: AssetImage(
                                      'lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                                SizedBox(height: 17,),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 138,
                              height: 37,
                              child: ElevatedButton( //Button for Acceptence of request
                                  onPressed: (){
                                    showDialog(
                                      context: context, // context should be available in the current scope
                                      builder: (BuildContext context) {
                                        return AlertDialog( // Alert box for Confirming
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          title: const Text(
                                            'Have you any Disease in your body',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF404040)
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          content:const SizedBox(
                                            height: 57,
                                            child: Column(
                                              children: [
                                                Text('Blood Pressure'),
                                                Text('Blood Pressure'),
                                                Text('Blood Pressure'),
                                              ],
                                            ),
                                          ),
                                          actions: [
                                            ElevatedButton(onPressed: (){}, child: const Text('Yes')),
                                            ElevatedButton(onPressed: (){}, child: const Text('No')),
                                          ],
                                        );
                                      },
                                    ).then((value) {
                                      //Navigator.push(context,
                                      // MaterialPageRoute(builder: (context) => const yourrequest()),); // Replace YourNewPage with the actual new page you want to navigate to
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFDE0A0A), // Set the desired background color
                                  ),
                                  child: const Text('Accept',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                        color: Colors.white
                                    ),
                                  )
                              ),
                            ),
                            const SizedBox(width: 26,),
                            SizedBox(
                              width: 138,
                              height: 37,
                              child: ElevatedButton( //Button for Rejection of request
                                  onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFffffff), // Set the desired background color
                                  ),
                                  child: const Text('Reject',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                        color: Color(0xFFDBDBDB)
                                    ),
                                  )
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    width: 335,//width of container
                    height: 294,//height of container
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: const Color(0xFFDBDBDB), width: 1),
                    ),
                    child: Column( // content of table
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 24, width: 12,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 24,),
                                RichText(
                                  textAlign: TextAlign.start,
                                  text: const TextSpan(
                                    style: TextStyle(),
                                    children: <TextSpan>[

                                      TextSpan(
                                        text: 'Patient Name:',
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
                                        text: 'Blood Needed:',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Montserrat',
                                          fontSize: 14,
                                          color: Color(0xFF404040),
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\n2 Units',
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: 24,),
                                Image(
                                  image: AssetImage(
                                      'lib/image/bloodinfo.png'),
                                  width: 24,
                                  height: 24,
                                ),
                                SizedBox(height: 17,),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 138,
                              height: 37,
                              child: ElevatedButton( //Button for Acceptence of request
                                  onPressed: (){
                                    showDialog(
                                      context: context, // context should be available in the current scope
                                      builder: (BuildContext context) {
                                        return AlertDialog( // Alert box for Confirming
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          title: const Text(
                                            'Have you any Disease in your body',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF404040)
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          content:const SizedBox(
                                            height: 57,
                                            child: Column(
                                              children: [
                                                Text('Blood Pressure'),
                                                Text('Blood Pressure'),
                                                Text('Blood Pressure'),
                                              ],
                                            ),
                                          ),
                                          actions: [
                                            ElevatedButton(onPressed: (){}, child: const Text('Yes')),
                                            ElevatedButton(onPressed: (){}, child: const Text('No')),
                                          ],
                                        );
                                      },
                                    ).then((value) {
                                      //Navigator.push(context,
                                      // MaterialPageRoute(builder: (context) => const yourrequest()),); // Replace YourNewPage with the actual new page you want to navigate to
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFDE0A0A), // Set the desired background color
                                  ),
                                  child: const Text('Accept',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                        color: Colors.white
                                    ),
                                  )
                              ),
                            ),
                            const SizedBox(width: 26,),
                            SizedBox(
                              width: 138,
                              height: 37,
                              child: ElevatedButton( //Button for Rejection of request
                                  onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFffffff), // Set the desired background color
                                  ),
                                  child: const Text('Reject',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                        color: Color(0xFFDBDBDB)
                                    ),
                                  )
                              ),
                            ),
                          ],
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
    );
  }
}
