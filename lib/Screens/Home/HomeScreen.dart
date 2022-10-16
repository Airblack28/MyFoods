import 'package:flutter/material.dart';
import 'package:myfoods/Screens/Home/DashBoard.dart';
import 'package:myfoods/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    PageController _controller = PageController();

    return Scaffold(
      // backgroundColor: const Color.fromRGBO(245, 71, 70, 1),
      backgroundColor: Color.fromARGB(255, 239, 239, 241),
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            child: Column(
              children: [
                // Entete HomePage
                Container(
                  height: height * 0.16,
                  padding: EdgeInsets.only(top: 20, left: 30, right: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)), 
                    color: Color.fromRGBO(245, 71, 70, 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)), 
                              color: thirtyColor.withOpacity(0.1),
                              image: DecorationImage(image: AssetImage("assets/images/User.png"))
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Text("Bonjour, Ryan",
                                  style: TextStyle(
                                    height: 1.4,
                                    color: colorLightTheme, 
                                    fontSize: 22,
                                    fontFamily: 'Montserrat-Black',
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
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
                            ],
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () => 
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DashBoard(),
                            )
                          ),
                        child: Icon(
                          Icons.settings, 
                          size: 35,
                          color: colorLightTheme,
                        ),
                      ),
                    ],
                  ),
                ),
                // Contenu Actualites
                Container(
                  height: height * 0.34,
                  padding: EdgeInsets.only(top: 25, left: 30, right: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ACTUALITES",
                        style: TextStyle(
                          height: 1.4,
                          color: primaryColor, 
                          fontSize: 15,
                          fontFamily: 'Montserrat-Black',
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(height: 10),
                      SingleChildScrollView(
                        controller: _controller,
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: width - 60,
                                height: 210,
                                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(15)), 
                                  color: Color.fromRGBO(245, 71, 70, 1),
                                  image: DecorationImage(image: AssetImage("assets/images/HomeSlide1.png"), fit: BoxFit.cover)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("PIZZA HUT",
                                      style: TextStyle(
                                        height: 1.4,
                                        color: secondaryColor, 
                                        fontSize: 18,
                                        fontFamily: 'Montserrat-Black',
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    Text("22.07.2022 - DOUALA",
                                      style: TextStyle(
                                        height: 1.4,
                                        color: colorLightTheme, 
                                        fontSize: 10,
                                        fontFamily: 'Montserrat-ExtraBold',
                                        fontStyle: FontStyle.italic,
                                        letterSpacing: 5,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: width - 60,
                                height: 210,
                                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(15)), 
                                  color: Color.fromRGBO(245, 71, 70, 1),
                                  image: DecorationImage(image: AssetImage("assets/images/HomeSlide1.png"), fit: BoxFit.cover)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("PIZZA HUT",
                                      style: TextStyle(
                                        height: 1.4,
                                        color: secondaryColor, 
                                        fontSize: 18,
                                        fontFamily: 'Montserrat-Black',
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    Text("22.07.2022 - DOUALA",
                                      style: TextStyle(
                                        height: 1.4,
                                        color: colorLightTheme, 
                                        fontSize: 10,
                                        fontFamily: 'Montserrat-ExtraBold',
                                        fontStyle: FontStyle.italic,
                                        letterSpacing: 5,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: width - 60,
                                height: 210,
                                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(15)), 
                                  color: Color.fromRGBO(245, 71, 70, 1),
                                  image: DecorationImage(image: AssetImage("assets/images/HomeSlide1.png"), fit: BoxFit.cover)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("PIZZA HUT",
                                      style: TextStyle(
                                        height: 1.4,
                                        color: secondaryColor, 
                                        fontSize: 18,
                                        fontFamily: 'Montserrat-Black',
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    Text("22.07.2022 - DOUALA",
                                      style: TextStyle(
                                        height: 1.4,
                                        color: colorLightTheme, 
                                        fontSize: 10,
                                        fontFamily: 'Montserrat-ExtraBold',
                                        fontStyle: FontStyle.italic,
                                        letterSpacing: 5,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: width - 60,
                                height: 210,
                                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(15)), 
                                  color: Color.fromRGBO(245, 71, 70, 1),
                                  image: DecorationImage(image: AssetImage("assets/images/HomeSlide1.png"), fit: BoxFit.cover)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("PIZZA HUT",
                                      style: TextStyle(
                                        height: 1.4,
                                        color: secondaryColor, 
                                        fontSize: 18,
                                        fontFamily: 'Montserrat-Black',
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    Text("22.07.2022 - DOUALA",
                                      style: TextStyle(
                                        height: 1.4,
                                        color: colorLightTheme, 
                                        fontSize: 10,
                                        fontFamily: 'Montserrat-ExtraBold',
                                        fontStyle: FontStyle.italic,
                                        letterSpacing: 5,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment(0, 0.1),
                        child: SmoothPageIndicator(
                          controller: _controller, 
                          count: 4, 
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
                ),
                // Contenu Commandes
                Container(
                  height: height * 0.17,
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("VOS COMMANDES FAVORIS",
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
                              child: Text("Voir Plus",
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
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 80,
                              height: 80,
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(15)), 
                                color: Color.fromRGBO(245, 71, 70, 1),
                                image: DecorationImage(image: AssetImage("assets/images/Favoris1.png"))
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("PIZZA",
                                    style: TextStyle(
                                      height: 1.4,
                                      color: colorLightTheme, 
                                      fontSize: 10,
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
                              width: 80,
                              height: 80,
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(15)), 
                                color: Color.fromRGBO(245, 71, 70, 1),
                                image: DecorationImage(image: AssetImage("assets/images/Favoris2.png"))
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("BURGER",
                                    style: TextStyle(
                                      height: 1.4,
                                      color: colorLightTheme, 
                                      fontSize: 10,
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
                              width: 80,
                              height: 80,
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(15)), 
                                color: Color.fromRGBO(245, 71, 70, 1),
                                image: DecorationImage(image: AssetImage("assets/images/Favoris3.png"))
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("POISSON",
                                    style: TextStyle(
                                      height: 1.4,
                                      color: colorLightTheme, 
                                      fontSize: 10,
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
                              width: 80,
                              height: 80,
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(15)), 
                                color: Color.fromRGBO(245, 71, 70, 1),
                                image: DecorationImage(image: AssetImage("assets/images/Favoris4.png"))
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("CREPES",
                                    style: TextStyle(
                                      height: 1.4,
                                      color: colorLightTheme, 
                                      fontSize: 10,
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
                    ],
                  ),
                ),
                // Contenu Resta
                Container(
                  height: height * 0.27,
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("PASSEZ VOTRE COMMANDE",
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
                              child: Text("Voir Plus",
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
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: height * 0.16 - 20,
            right: 0,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.only(left: 30, right: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)), 
                  color: secondaryColor,
                ),
                child: Icon(
                  Icons.notifications, 
                  size: 25,
                  color: colorLightTheme,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -60,
            child: Text('FOODS',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black12, 
                fontSize: 110, 
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