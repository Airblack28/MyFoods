import 'package:flutter/material.dart';
import 'package:myfoods/Screens/Welcome/FirstSlide.dart';
import 'package:myfoods/Screens/Welcome/SecondSlide.dart';
import 'package:myfoods/Screens/Welcome/ThirdSlide.dart';
import 'package:myfoods/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Slide extends StatefulWidget {
  const Slide({Key? key}) : super(key: key);

  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  // This widget is the root of your application.

  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorLightTheme,
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              FirstSlide(),
              SecondSlide(),
              ThirdSlide(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.1),
            child: SmoothPageIndicator(
              controller: _controller, 
              count: 3, 
              effect: ExpandingDotsEffect(
                activeDotColor: primaryColor,
                dotColor: Colors.black12,
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}