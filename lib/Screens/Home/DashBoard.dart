import 'package:flutter/material.dart';
import 'package:myfoods/Screens/Home/RestoScreen.dart';
import 'package:myfoods/Screens/Welcome/Slide.dart';
import 'package:myfoods/constants.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 71, 70, 1),
      body: Stack(
        // alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            top: 60,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)), 
                    color: thirtyColor.withOpacity(0.1),
                    image: DecorationImage(image: AssetImage("assets/images/User.png"))
                  ),
                ),
                SizedBox(height: 20),
                Container(
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
                SizedBox(height: 30),
                Container(
                  width: width * 0.4,
                  height: 3,
                  color: colorLightTheme,
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    child: Text("Votre Profil",
                      style: TextStyle(
                        height: 1.4,
                        color: colorLightTheme, 
                        fontSize: 15,
                        fontFamily: 'Montserrat-Black',
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    child: Text("Les Actualites",
                      style: TextStyle(
                        height: 1.4,
                        color: colorLightTheme, 
                        fontSize: 15,
                        fontFamily: 'Montserrat-Black',
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => 
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RestoScreen(),
                      )
                    ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    child: Text("Les Commandes effectuees",
                      style: TextStyle(
                        height: 1.4,
                        color: colorLightTheme, 
                        fontSize: 15,
                        fontFamily: 'Montserrat-Black',
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    child: Text("A Propos de nous",
                      style: TextStyle(
                        height: 1.4,
                        color: colorLightTheme, 
                        fontSize: 15,
                        fontFamily: 'Montserrat-Black',
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    child: Text("Contacts",
                      style: TextStyle(
                        height: 1.4,
                        color: colorLightTheme, 
                        fontSize: 15,
                        fontFamily: 'Montserrat-Black',
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: width * 0.4,
                  height: 3,
                  color: colorLightTheme,
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () => 
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Slide(),
                      )
                    ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    child: Text("Deconnexion",
                      style: TextStyle(
                        height: 1.4,
                        color: colorLightTheme, 
                        fontSize: 15,
                        fontFamily: 'Montserrat-Black',
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
              ]      
            ),
          ),
          Positioned(
            top: 60,
            left: 70,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 30,
                height: 30,
                margin: EdgeInsets.only(left: 30, right: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)), 
                  color: secondaryColor,
                ),
                child: Icon(
                  Icons.notifications, 
                  size: 20,
                  color: colorLightTheme,
                ),
              ),
            ),
          ),
          Positioned(
            top: 60,
            right: 30,
            child: GestureDetector(
              onTap: () =>  Navigator.pop(context),
              child: Icon(
                Icons.arrow_circle_right_sharp, 
                size: 40,
                color: colorLightTheme,
              ),
            ),
          ),
          Positioned(
            bottom: -40,
            right: -60,
            child: RotatedBox(
              quarterTurns: -1,
              child: Text('MY FOODS',
                style: TextStyle(
                  color: Colors.black12, 
                  fontSize: 120, 
                  fontWeight: FontWeight.bold, 
                  fontFamily: 'Montserrat-ExtraBold',
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}