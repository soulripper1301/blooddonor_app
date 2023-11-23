import 'package:blood_app/screens/1.%20Tour1.dart';
import 'package:blood_app/screens/2.%20Tour2.dart';
import 'package:blood_app/screens/3.%20Tour3.dart';
import 'package:flutter/cupertino.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({super.key});
  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}
class _PageViewDemoState extends State<PageViewDemo> {
  final _controller = PageController(
    initialPage: 0,
  );
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: const [
        FirstPage(),
        SecondPage(),
        ThirdPage(),
      ],
    );
  }
}

