import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myfoods/constants.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String email = "";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorLightTheme,
      body: Container(
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
                Text('NOUVEAU PAR ICI ?\nALORS REJOIGNEZ-NOUS!!',
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
            Container(
              margin: EdgeInsets.only(left: 10, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(65)), color: thirtyColor.withOpacity(0.1),),
                    child: Icon(Icons.person_rounded, size: 100, color: thirtyColor,),
                  ),
                  Column(
                    children: [
                      Container(
                        width: 200,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none
                            ),
                            contentPadding: EdgeInsets.symmetric(
                            horizontal: 25, vertical: 12),
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.2),
                              fontFamily: 'Montserrat-ExtraBold',
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontSize: 15,
                            ),
                            hintText: "PRENOM",
                            // If  you are using latest version of flutter then lable text and hint text shown like this
                            // if you r using flutter less then 1.20.* then maybe this is not working properly
                            // floatingLabelBehavior: FloatingLabelBehavior.always,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        width: 200,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none
                            ),
                            contentPadding: EdgeInsets.symmetric(
                            horizontal: 25, vertical: 12),
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.2),
                              fontFamily: 'Montserrat-ExtraBold',
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontSize: 15,
                            ),
                            hintText: "NOM",
                            // If  you are using latest version of flutter then lable text and hint text shown like this
                            // if you r using flutter less then 1.20.* then maybe this is not working properly
                            // floatingLabelBehavior: FloatingLabelBehavior.always,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.only(left: 10, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 140,
                    child: TextField(
                      keyboardType: TextInputType.numberWithOptions(decimal: false),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none
                        ),
                        contentPadding: EdgeInsets.symmetric(
                        horizontal: 25, vertical: 12),
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.2),
                          fontFamily: 'Montserrat-ExtraBold',
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 15,
                        ),
                        hintText: "AGE",
                        // If  you are using latest version of flutter then lable text and hint text shown like this
                        // if you r using flutter less then 1.20.* then maybe this is not working properly
                        // floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                  ),
                  Container(
                    width: 200,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none
                        ),
                        contentPadding: EdgeInsets.symmetric(
                        horizontal: 25, vertical: 12),
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.2),
                          fontFamily: 'Montserrat-ExtraBold',
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 15,
                        ),
                        hintText: "GENRE",
                        // If  you are using latest version of flutter then lable text and hint text shown like this
                        // if you r using flutter less then 1.20.* then maybe this is not working properly
                        // floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.only(left: 10, right: 30),
              child: TextField(
                keyboardType: TextInputType.numberWithOptions(decimal: false),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none
                  ),
                  contentPadding: EdgeInsets.symmetric(
                  horizontal: 25, vertical: 12),
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                    fontFamily: 'Montserrat-ExtraBold',
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                  ),
                  hintText: "NUMERO DE TELEPHONE",
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
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none
                  ),
                  contentPadding: EdgeInsets.symmetric(
                  horizontal: 25, vertical: 12),
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                    fontFamily: 'Montserrat-ExtraBold',
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                  ),
                  hintText: "QUARTIER",
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
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none
                  ),
                  contentPadding: EdgeInsets.symmetric(
                  horizontal: 25, vertical: 12),
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                    fontFamily: 'Montserrat-ExtraBold',
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                  ),
                  hintText: "DETAILS SUPP",
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
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none
                  ),
                  contentPadding: EdgeInsets.symmetric(
                  horizontal: 25, vertical: 12),
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                    fontFamily: 'Montserrat-ExtraBold',
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
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
                  top: 10, bottom: 10, left: 25, right: 10),
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                    fontFamily: 'Montserrat-ExtraBold',
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
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
                  top: 10, bottom: 10, left: 25, right: 10),
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                    fontFamily: 'Montserrat-ExtraBold',
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                  ),
                  hintText: "CONFIRMER MDP",
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
            SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 30, top: 12, bottom: 12, right: 30),
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)), color: primaryColor,),
                    child: Text('INSCRITS-TOI !',
                      style: TextStyle(
                        color: colorLightTheme, 
                        fontSize: 13,
                        fontFamily: 'Montserrat-Black', 
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}