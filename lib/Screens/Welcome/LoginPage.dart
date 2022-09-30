import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myfoods/Screens/Welcome/SignInPage.dart';
import 'package:myfoods/constants.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = "";

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
            child: Image.asset("assets/images/Slide4-Bg.png")
          ),
          Positioned(
            child: Container(
              margin: EdgeInsets.only(top: 60),
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () =>  Navigator.pop(context),
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded, 
                          size: 25,
                          color: primaryColor,
                        ),
                      ),
                      SizedBox(width: 12),
                      SvgPicture.asset(
                        MediaQuery.of(context).platformBrightness == Brightness.dark
                            ? "assets/icons/MyFood.svg"
                            : "assets/icons/MyFood.svg", width: 50, height: 50, color: primaryColor,
                      ),
                      SizedBox(width: 15),
                      Text('DE RETOUR ?\nALLEZ CONNECTEZ-VOUS !!',
                        style: TextStyle(
                        color: thirtyColor, 
                        fontSize: 16,
                        fontFamily: 'Montserrat-ExtraBold',
                        fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Text("S'il vous plait entrer vos informations dans ce formulaire pour continuer.",
                      style: TextStyle(
                        height: 1.7,
                        color: thirtyColor.withOpacity(0.2), 
                        fontSize: 12,
                        fontFamily: 'Montserrat-Bold',
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 30),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none
                        ),
                        contentPadding: EdgeInsets.symmetric(
                        horizontal: 25, vertical: 15),
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.2),
                          fontFamily: 'Montserrat-ExtraBold',
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 16,
                        ),
                        hintText: "EMAIL",
                        // If  you are using latest version of flutter then lable text and hint text shown like this
                        // if you r using flutter less then 1.20.* then maybe this is not working properly
                        // floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 30),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none
                        ),
                        contentPadding: EdgeInsets.only(
                        top: 12, bottom: 12, left: 25, right: 10),
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.2),
                          fontFamily: 'Montserrat-ExtraBold',
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 16,
                        ),
                        hintText: "MOT DE PASSE",
                        // If  you are using latest version of flutter then lable text and hint text shown like this
                        // if you r using flutter less then 1.20.* then maybe this is not working properly
                        // floatingLabelBehavior: FloatingLabelBehavior.always,
                        suffix: Container(
                          margin: EdgeInsets.only(left: 20),
                          padding: EdgeInsets.only(left: 10, top: 8, bottom: 8, right: 10),
                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)), color: thirtyColor,),
                          child: Text('MONTRER',
                            style: TextStyle(
                              color: colorLightTheme, 
                              fontSize: 10,
                              fontFamily: 'Montserrat-Black', 
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ),
                    ),
                    
                  ),
                  SizedBox(height: 15),
                  Container(
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(left: 10, right: 30),
                    child: Text('MOT DE PASSE OUBLIE !?',
                      style: TextStyle(
                        color: primaryColor, 
                        fontSize: 10,
                        fontFamily: 'Montserrat-Black', 
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 30, top: 12, bottom: 12, right: 30),
                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)), color: primaryColor,),
                          child: Text('CONNECTES-TOI !',
                            style: TextStyle(
                              color: colorLightTheme, 
                              fontSize: 13,
                              fontFamily: 'Montserrat-Black', 
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
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
                      ],
                    ),
                  ),
                ],
              ),
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
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)), color: primaryColor,),
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