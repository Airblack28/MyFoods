import 'package:flutter/material.dart';

const primaryColor = Color.fromRGBO(185, 24, 24, 1);
const secondaryColor = Color.fromARGB(255, 213, 194, 25);
const thirtyColor = Colors.black;
const colorLightTheme = Colors.white;
const colorDarkTheme = Colors.black;
const warninngColor = Color(0xFFF3BB1C);
const errorColor = Color(0xFFF03738);

const defaultPadding = 16.0;

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9]+@[a-zA-Z0-15]+\.[a-zA-Z]+");
