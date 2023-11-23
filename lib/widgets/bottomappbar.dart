import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../screens/14. YourRequests.dart';
import '../screens/20. Appointment.dart';
import '../screens/7. ProfileCreation.dart';
import '../screens/8. Home.dart';
import '../screens/9. Request.dart';

class appbar extends StatefulWidget {
  const appbar({Key? key}) : super(key: key);

  @override
  _AppbarState createState() => _AppbarState();
}

class _AppbarState extends State<appbar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Container(
        height: 56.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildButton(0, 'lib/image/request.png', 'Requests'),
            buildButton(1, 'lib/image/appo.png', 'Appointments'),
            buildButton(2, 'lib/image/setting.png', 'Settings'),
            buildButton(3, 'lib/image/person.png', 'Profile'),
          ],
        ),
      ),
    );
  }

  Widget buildButton(int index, String imagePath, String text) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          selectedIndex = index;
        });

        navigateToScreen(index);
      },
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: Colors.transparent,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(imagePath), color: getColor(index)),
          Text(
            text,
            style: TextStyle(
              color: getColor(index),
              fontSize: 8,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Color getColor(int index) {
    return index == selectedIndex ? Colors.red : Colors.black;
  }

  void navigateToScreen(int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const yourrequest()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const appointment()),
        );
        break;
      case 2:
      // Handle Settings button click
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Profile()),
        );
        break;
    }
  }
}
