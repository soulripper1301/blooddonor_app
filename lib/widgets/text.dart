// Text used in the Start of the app
import 'package:flutter/material.dart';
class text extends StatelessWidget {
  const text({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Help the community \n Save Life',
      textAlign: TextAlign.center,
      style: TextStyle(fontFamily: 'Montserrat',// Style of the Text
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Color(0xFFDBDBDB)
      ),
    );
  }
}
