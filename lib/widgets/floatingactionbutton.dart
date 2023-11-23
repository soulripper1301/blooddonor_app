//Floating Action Button in the bottom App bar
import 'package:flutter/material.dart';
import '../screens/8. Home.dart';
class float extends StatelessWidget {
  const float({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
    onPressed: () {// when pressed the button will take you to Home(),
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => const Home()));
    },
    backgroundColor: Color(0xFFDE0A0A),
    child: const Image(image: AssetImage('lib/image/house 1.png')),// image in floating action button
    );

  }
}
