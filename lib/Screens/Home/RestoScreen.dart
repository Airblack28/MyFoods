import 'package:flutter/material.dart';
import 'package:myfoods/constants.dart';

class RestoScreen extends StatefulWidget {
  const RestoScreen({Key? key}) : super(key: key);

  @override
  State<RestoScreen> createState() => _RestoScreenState();
}

class _RestoScreenState extends State<RestoScreen> {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      // backgroundColor: const Color.fromRGBO(245, 71, 70, 1),
      backgroundColor: Color.fromARGB(255, 239, 239, 241),
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            top: height * 0.06,
            child: Container(
              width: width,
              height: height * 0.33,
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Arthur\nCOMMANDE\nDANS UN RESTAURANT',
                    style: TextStyle(
                    color: thirtyColor, 
                    fontSize: 24,
                    fontFamily: 'Montserrat-ExtraBold',
                    fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text('DE TON CHOIX !!',
                    style: TextStyle(
                    color: primaryColor, 
                    fontSize: 24,
                    fontFamily: 'Montserrat-ExtraBold',
                    fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on, 
                        size: 17,
                        color: secondaryColor,
                      ),
                      Text("Douala, Cameroun",
                        style: TextStyle(
                          height: 1.7,
                          color: secondaryColor, 
                          fontSize: 12,
                          fontFamily: 'Montserrat-Bold',
                        ),
                      ),
                    ],
                  ),
                ),
                  SizedBox(height: 20),
                  TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      color: colorDarkTheme,
                      fontFamily: 'Montserrat-ExtraBold',
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
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
                        fontSize: 12,
                      ),
                      prefixIcon: Icon(
                        Icons.search, 
                        size: 25,
                        color: Color.fromRGBO(0, 0, 0, 0.2),
                      ),
                      hintText: "TAPES LE RESTO DE TON CHOIX",
                      // If  you are using latest version of flutter then lable text and hint text shown like this
                      // if you r using flutter less then 1.20.* then maybe this is not working properly
                      // floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("CHERCHER PAR CATEGORIE",
                        style: TextStyle(
                          height: 1.4,
                          color: primaryColor, 
                          fontSize: 15,
                          fontFamily: 'Montserrat-Black',
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          height: 20,
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)), 
                            color: secondaryColor,
                          ),
                          child: Text("Aucune",
                            style: TextStyle(
                              height: 1.4,
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
                ],
              ),
            ),
          ),
          Positioned(
            top: height * 0.06,
            right: 30,
            child: Container(
              // height: height * 0.25,
              child: GestureDetector(
                onTap: () =>  Navigator.pop(context),
                child: Container(
                  alignment: Alignment.center,
                  height: 20,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)), 
                    color: secondaryColor,
                  ),
                  child: Text("Retour",
                    style: TextStyle(
                      height: 1.4,
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
          Positioned(
            top: height * 0.38,
            child: Column(
              children: [
                // Contenu Resta
                Container(
                  width: width,
                  height: height * 0.65,
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: SingleChildScrollView(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: width * 0.5 - 35 ,
                                height: 180,
                                padding: EdgeInsets.only(left: 5, right: 5, bottom: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(15)), 
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(16, 0, 0, 0),
                                      offset: Offset(1.0 , 1.0),
                                      blurRadius: 5.0,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  color: colorLightTheme,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 110,
                                      padding: EdgeInsets.symmetric(horizontal: 5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(10)), 
                                        color: Color.fromRGBO(245, 71, 70, 1),
                                        image: DecorationImage(image: AssetImage("assets/images/Resto1.png"), fit: BoxFit.cover)
                                      ),
                                    ),
                                    SizedBox(height: 17),
                                    // Container(
                                    //   width: 50,
                                    //   height: 50,
                                    //   decoration: BoxDecoration(
                                    //     borderRadius: BorderRadius.all(Radius.circular(25)), 
                                    //     color: colorLightTheme,
                                    //     image: DecorationImage(image: AssetImage("assets/images/User.png"))
                                    //   ),
                                    // ),
                                    Text("PIZZA HUT",
                                      style: TextStyle(
                                        height: 1.4,
                                        color: primaryColor, 
                                        fontSize: 15,
                                        fontFamily: 'Montserrat-Black',
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    Text("BONAMOUSSADI DOUALA",
                                      style: TextStyle(
                                        height: 1.4,
                                        color: primaryColor, 
                                        fontSize: 6,
                                        fontFamily: 'Montserrat-Black',
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: width * 0.5 - 35 ,
                                height: 180,
                                padding: EdgeInsets.only(left: 5, right: 5, bottom: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(15)), 
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(16, 0, 0, 0),
                                      offset: Offset(1.0 , 1.0),
                                      blurRadius: 5.0,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  color: colorLightTheme,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 110,
                                      padding: EdgeInsets.symmetric(horizontal: 5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(10)), 
                                        color: Color.fromRGBO(245, 71, 70, 1),
                                        image: DecorationImage(image: AssetImage("assets/images/Resto2.png"), fit: BoxFit.cover)
                                      ),
                                    ),
                                    SizedBox(height: 17),
                                    // Container(
                                    //   width: 50,
                                    //   height: 50,
                                    //   decoration: BoxDecoration(
                                    //     borderRadius: BorderRadius.all(Radius.circular(25)), 
                                    //     color: colorLightTheme,
                                    //     image: DecorationImage(image: AssetImage("assets/images/User.png"))
                                    //   ),
                                    // ),
                                    Text("K.MY CHOICE",
                                      style: TextStyle(
                                        height: 1.4,
                                        color: primaryColor, 
                                        fontSize: 15,
                                        fontFamily: 'Montserrat-Black',
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    Text("DEIDO DOUALA",
                                      style: TextStyle(
                                        height: 1.4,
                                        color: primaryColor, 
                                        fontSize: 6,
                                        fontFamily: 'Montserrat-Black',
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: width * 0.5 - 35 ,
                                height: 180,
                                padding: EdgeInsets.only(left: 5, right: 5, bottom: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(15)), 
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(16, 0, 0, 0),
                                      offset: Offset(1.0 , 1.0),
                                      blurRadius: 5.0,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  color: colorLightTheme,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 110,
                                      padding: EdgeInsets.symmetric(horizontal: 5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(10)), 
                                        color: Color.fromRGBO(245, 71, 70, 1),
                                        image: DecorationImage(image: AssetImage("assets/images/Resto1.png"), fit: BoxFit.cover)
                                      ),
                                    ),
                                    SizedBox(height: 17),
                                    // Container(
                                    //   width: 50,
                                    //   height: 50,
                                    //   decoration: BoxDecoration(
                                    //     borderRadius: BorderRadius.all(Radius.circular(25)), 
                                    //     color: colorLightTheme,
                                    //     image: DecorationImage(image: AssetImage("assets/images/User.png"))
                                    //   ),
                                    // ),
                                    Text("PIZZA HUT",
                                      style: TextStyle(
                                        height: 1.4,
                                        color: primaryColor, 
                                        fontSize: 15,
                                        fontFamily: 'Montserrat-Black',
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    Text("BONAMOUSSADI DOUALA",
                                      style: TextStyle(
                                        height: 1.4,
                                        color: primaryColor, 
                                        fontSize: 6,
                                        fontFamily: 'Montserrat-Black',
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: width * 0.5 - 35 ,
                                height: 180,
                                padding: EdgeInsets.only(left: 5, right: 5, bottom: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(15)), 
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(16, 0, 0, 0),
                                      offset: Offset(1.0 , 1.0),
                                      blurRadius: 5.0,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  color: colorLightTheme,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 110,
                                      padding: EdgeInsets.symmetric(horizontal: 5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(10)), 
                                        color: Color.fromRGBO(245, 71, 70, 1),
                                        image: DecorationImage(image: AssetImage("assets/images/Resto2.png"), fit: BoxFit.cover)
                                      ),
                                    ),
                                    SizedBox(height: 17),
                                    // Container(
                                    //   width: 50,
                                    //   height: 50,
                                    //   decoration: BoxDecoration(
                                    //     borderRadius: BorderRadius.all(Radius.circular(25)), 
                                    //     color: colorLightTheme,
                                    //     image: DecorationImage(image: AssetImage("assets/images/User.png"))
                                    //   ),
                                    // ),
                                    Text("K.MY CHOICE",
                                      style: TextStyle(
                                        height: 1.4,
                                        color: primaryColor, 
                                        fontSize: 15,
                                        fontFamily: 'Montserrat-Black',
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    Text("DEIDO DOUALA",
                                      style: TextStyle(
                                        height: 1.4,
                                        color: primaryColor, 
                                        fontSize: 6,
                                        fontFamily: 'Montserrat-Black',
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: width * 0.5 - 35 ,
                                height: 180,
                                padding: EdgeInsets.only(left: 5, right: 5, bottom: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(15)), 
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(16, 0, 0, 0),
                                      offset: Offset(1.0 , 1.0),
                                      blurRadius: 5.0,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  color: colorLightTheme,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 110,
                                      padding: EdgeInsets.symmetric(horizontal: 5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(10)), 
                                        color: Color.fromRGBO(245, 71, 70, 1),
                                        image: DecorationImage(image: AssetImage("assets/images/Resto1.png"), fit: BoxFit.cover)
                                      ),
                                    ),
                                    SizedBox(height: 17),
                                    // Container(
                                    //   width: 50,
                                    //   height: 50,
                                    //   decoration: BoxDecoration(
                                    //     borderRadius: BorderRadius.all(Radius.circular(25)), 
                                    //     color: colorLightTheme,
                                    //     image: DecorationImage(image: AssetImage("assets/images/User.png"))
                                    //   ),
                                    // ),
                                    Text("PIZZA HUT",
                                      style: TextStyle(
                                        height: 1.4,
                                        color: primaryColor, 
                                        fontSize: 15,
                                        fontFamily: 'Montserrat-Black',
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    Text("BONAMOUSSADI DOUALA",
                                      style: TextStyle(
                                        height: 1.4,
                                        color: primaryColor, 
                                        fontSize: 6,
                                        fontFamily: 'Montserrat-Black',
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: width * 0.5 - 35 ,
                                height: 180,
                                padding: EdgeInsets.only(left: 5, right: 5, bottom: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(15)), 
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(16, 0, 0, 0),
                                      offset: Offset(1.0 , 1.0),
                                      blurRadius: 5.0,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  color: colorLightTheme,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 110,
                                      padding: EdgeInsets.symmetric(horizontal: 5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(10)), 
                                        color: Color.fromRGBO(245, 71, 70, 1),
                                        image: DecorationImage(image: AssetImage("assets/images/Resto2.png"), fit: BoxFit.cover)
                                      ),
                                    ),
                                    SizedBox(height: 17),
                                    // Container(
                                    //   width: 50,
                                    //   height: 50,
                                    //   decoration: BoxDecoration(
                                    //     borderRadius: BorderRadius.all(Radius.circular(25)), 
                                    //     color: colorLightTheme,
                                    //     image: DecorationImage(image: AssetImage("assets/images/User.png"))
                                    //   ),
                                    // ),
                                    Text("K.MY CHOICE",
                                      style: TextStyle(
                                        height: 1.4,
                                        color: primaryColor, 
                                        fontSize: 15,
                                        fontFamily: 'Montserrat-Black',
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    Text("DEIDO DOUALA",
                                      style: TextStyle(
                                        height: 1.4,
                                        color: primaryColor, 
                                        fontSize: 6,
                                        fontFamily: 'Montserrat-Black',
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: width * 0.5 - 35 ,
                                height: 180,
                                padding: EdgeInsets.only(left: 5, right: 5, bottom: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(15)), 
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(16, 0, 0, 0),
                                      offset: Offset(1.0 , 1.0),
                                      blurRadius: 5.0,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  color: colorLightTheme,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 110,
                                      padding: EdgeInsets.symmetric(horizontal: 5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(10)), 
                                        color: Color.fromRGBO(245, 71, 70, 1),
                                        image: DecorationImage(image: AssetImage("assets/images/Resto1.png"), fit: BoxFit.cover)
                                      ),
                                    ),
                                    SizedBox(height: 17),
                                    // Container(
                                    //   width: 50,
                                    //   height: 50,
                                    //   decoration: BoxDecoration(
                                    //     borderRadius: BorderRadius.all(Radius.circular(25)), 
                                    //     color: colorLightTheme,
                                    //     image: DecorationImage(image: AssetImage("assets/images/User.png"))
                                    //   ),
                                    // ),
                                    Text("PIZZA HUT",
                                      style: TextStyle(
                                        height: 1.4,
                                        color: primaryColor, 
                                        fontSize: 15,
                                        fontFamily: 'Montserrat-Black',
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    Text("BONAMOUSSADI DOUALA",
                                      style: TextStyle(
                                        height: 1.4,
                                        color: primaryColor, 
                                        fontSize: 6,
                                        fontFamily: 'Montserrat-Black',
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: width * 0.5 - 35 ,
                                height: 180,
                                padding: EdgeInsets.only(left: 5, right: 5, bottom: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(15)), 
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(16, 0, 0, 0),
                                      offset: Offset(1.0 , 1.0),
                                      blurRadius: 5.0,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  color: colorLightTheme,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 110,
                                      padding: EdgeInsets.symmetric(horizontal: 5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(10)), 
                                        color: Color.fromRGBO(245, 71, 70, 1),
                                        image: DecorationImage(image: AssetImage("assets/images/Resto2.png"), fit: BoxFit.cover)
                                      ),
                                    ),
                                    SizedBox(height: 17),
                                    // Container(
                                    //   width: 50,
                                    //   height: 50,
                                    //   decoration: BoxDecoration(
                                    //     borderRadius: BorderRadius.all(Radius.circular(25)), 
                                    //     color: colorLightTheme,
                                    //     image: DecorationImage(image: AssetImage("assets/images/User.png"))
                                    //   ),
                                    // ),
                                    Text("K.MY CHOICE",
                                      style: TextStyle(
                                        height: 1.4,
                                        color: primaryColor, 
                                        fontSize: 15,
                                        fontFamily: 'Montserrat-Black',
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    Text("DEIDO DOUALA",
                                      style: TextStyle(
                                        height: 1.4,
                                        color: primaryColor, 
                                        fontSize: 6,
                                        fontFamily: 'Montserrat-Black',
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          
                          ],
                        ),
                        SizedBox(height: 50),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
