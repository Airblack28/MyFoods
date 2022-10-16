import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myfoods/Screens/Home/HomeScreen.dart';
import 'package:myfoods/constants.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorLightTheme,
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            bottom: 0,
            child: Image.asset("assets/images/Slide5-Bg.png")
          ),
          Positioned(
            child: Container(
              margin: EdgeInsets.only(top: 60),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () =>  Navigator.pop(context),
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded, 
                          size: 25,
                          color: primaryColor,
                        ),
                      ),
                      SvgPicture.asset(
                        MediaQuery.of(context).platformBrightness == Brightness.dark
                            ? "assets/icons/MyFood.svg"
                            : "assets/icons/MyFood.svg", width: 60, height: 60, color: primaryColor,
                      ),
                      Icon(
                        Icons.arrow_back_ios_new_rounded, 
                        size: 25,
                        color: Colors.transparent,
                      ),
                    ],
                  ),
                  SizedBox(height: 100),
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(65)), 
                      color: thirtyColor.withOpacity(0.1),
                      image: DecorationImage(image: AssetImage("assets/images/User.png"))
                      // Image.asset("assets/images/MyFoods-Icon.png")
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Text("BIENVENU PARMI NOUS",
                      style: TextStyle(
                        height: 1.7,
                        color: primaryColor, 
                        fontSize: 15,
                        fontFamily: 'Montserrat-Black',
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Text("AirBlack28",
                      style: TextStyle(
                        height: 1.4,
                        color: secondaryColor, 
                        fontSize: 30,
                        fontFamily: 'Montserrat-Black',
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on, 
                        size: 17,
                        color: thirtyColor.withOpacity(0.2),
                      ),
                      Text("Douala, Cameroun",
                        style: TextStyle(
                          height: 1.7,
                          color: thirtyColor.withOpacity(0.2), 
                          fontSize: 12,
                          fontFamily: 'Montserrat-Bold',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: () => 
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        )
                      ),
                    child: Container(
                      padding: EdgeInsets.only(left: 30, top: 12, bottom: 12, right: 30),
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)), color: primaryColor,),
                        child: Text("C'EST PARTI !",
                        style: TextStyle(
                          color: colorLightTheme, 
                          fontSize: 15,
                          fontFamily: 'Montserrat-Black', 
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ],
      ),
    );
  }
}