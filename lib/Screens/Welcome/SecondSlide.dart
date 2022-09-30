import 'package:flutter/material.dart';
import 'package:myfoods/Screens/Welcome/LoginPage.dart';
import 'package:myfoods/Screens/Welcome/SignInPage.dart';
import 'package:myfoods/constants.dart';

class SecondSlide extends StatelessWidget {
  const SecondSlide({Key? key}) : super(key: key);

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
            child: Image.asset("assets/images/Slide2-Bg.png")
            // SvgPicture.asset(
            //     MediaQuery.of(context).platformBrightness == Brightness.dark
            //         ? "assets/images/Slide1-Bg.svg"
            //         : "assets/images/Slide1-Bg.svg"
            //   ),
          ),
          Positioned(
            child: Container(
              margin: EdgeInsets.only(top: 70),
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('RECEVEZ \nVOTRE COMMANDE SANS BOUGER DE',
                    style: TextStyle(
                    color: thirtyColor, 
                    fontSize: 26,
                    fontFamily: 'Montserrat-ExtraBold',
                    fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text('CHEZ VOUS',
                    style: TextStyle(
                    color: primaryColor, 
                    fontSize: 26,
                    fontFamily: 'Montserrat-ExtraBold',
                    fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Avec l'application MyFood, la nourriture n'aura plus aucun secret pour toi. Manger, boire, et se divertir deviens plus simple grace nous. La Nourriture c'est la Base.",
                    style: TextStyle(
                      height: 1.7,
                      color: thirtyColor.withOpacity(0.2), 
                      fontSize: 12,
                      fontFamily: 'Montserrat-Bold',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => 
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>Login(),
                        )
                      ),
                  child: Container(
                    padding: EdgeInsets.only(left: 30, top: 12, bottom: 12, right: 30),
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)), color: primaryColor,),
                    child: Text('CONNECTEZ-VOUS !',
                      style: TextStyle(
                        color: colorLightTheme, 
                        fontSize: 13,
                        fontFamily: 'Montserrat-Black', 
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: Colors.white60,),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 10),
                  Text('VOUS ETES NOUVEAU ?!',
                    style: TextStyle(
                    color: thirtyColor, 
                    fontSize: 10,
                    fontFamily: 'Montserrat-ExtraBold', 
                    fontStyle: FontStyle.italic,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => 
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>SignIn(),
                        )
                      ),
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      padding: EdgeInsets.only(left: 20, top: 8, bottom: 8, right: 20),
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)), color: secondaryColor,),
                      child: Text('REJOIGNEZ-NOUS !',
                        style: TextStyle(
                          color: colorLightTheme, 
                          fontSize: 10,
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