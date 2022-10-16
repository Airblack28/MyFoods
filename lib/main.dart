import 'package:flutter/material.dart';
import 'package:myfoods/Screens/Welcome/SplashScreen.dart';
import 'package:myfoods/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Food',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      home: const SplashScreen(),
    );
  }
}