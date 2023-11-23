// Floating Action Button 2
import 'package:flutter/material.dart';
class FABR extends StatelessWidget {
  final VoidCallback onPressed;
  final String ButtonText;

  const FABR({super.key, // required functions
    required this.onPressed,
    required this.ButtonText,
  });


  @override
  Widget build(BuildContext context) {
    return SizedBox(// Fixed Size of Action Button
      height: 48,
      width: 335,
      child: FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: const Color(0xFFDE0A0A),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Text(ButtonText,
        style: const TextStyle(
          fontWeight:FontWeight.w600,
          fontFamily: 'Montserrat',
            fontSize: 16,
        ),
        ),
      ),
      );
  }
}

