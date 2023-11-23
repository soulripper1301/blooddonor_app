//Floating Action Button
// Used in Tour 1, Tour 2
// Small Circle
import 'package:flutter/material.dart';
class FAB extends StatelessWidget {
  final VoidCallback onPressed;
  final Color backgroundColor;
  final IconData icon;

  const FAB({ //required functions
    required this.onPressed,
    required this.backgroundColor,
    required this.icon, required size,

  }
);


  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: onPressed,
    backgroundColor: backgroundColor,
      child: Icon(icon),
    );
  }
}
