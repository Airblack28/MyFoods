import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myfoods/Screens/Welcome/Slide.dart';
import 'package:myfoods/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // demo time it required to load inital data
    Future.delayed(
      const Duration(seconds: 5),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Slide(),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 71, 70, 1),
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Center(
            child: 
              SvgPicture.asset(
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? "assets/icons/MyFood-Icon-Neutre.svg"
                    : "assets/icons/MyFood-Icon-Neutre.svg",
              ),
          ),
          const Positioned(
            bottom: 90,
            child: Text('MY FOODS',
              style: TextStyle(
              color: colorLightTheme, 
              fontSize: 20, 
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat-ExtraBold', 
              fontStyle: FontStyle.italic,
              ),
            ),
          ),

          const Positioned(
            bottom: -70,
            child: Text('FOODS',
              style: TextStyle(
              color: Colors.black12, 
              fontSize: 120, 
              fontWeight: FontWeight.bold, 
              fontFamily: 'Montserrat-ExtraBold',
              fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
