// Find Donors Page
// We need to connect an API to enable location
import 'package:flutter/material.dart';
import '../widgets/bottomappbar.dart';
import '../widgets/floatingactionbutton.dart';
import '13. RequestForm.dart';
import '8. Home.dart';

class donors extends StatelessWidget {
  const donors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
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
              const SizedBox(height: 69),
              Row(
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
                    'Find Donors',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
}
