import 'package:flutter/material.dart';
import 'package:myfoods/constants.dart';

// Let's apply light and dark theme on our app

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: colorLightTheme,
    appBarTheme: appBarTheme,
    iconTheme: const IconThemeData(color: primaryColor),
    colorScheme: const ColorScheme.light(
      primary: primaryColor,
      secondary: secondaryColor,
      error: errorColor,
    ),
    inputDecorationTheme: inputDecorationTheme.copyWith(
        fillColor: primaryColor.withOpacity(0.05)),
  );
}

ThemeData darkThemeData(BuildContext context) {
  // Bydefault flutter provie us light and dark theme
  // we just modify it as our need
  return ThemeData.dark().copyWith(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: colorDarkTheme,
    appBarTheme: appBarTheme,
    iconTheme: const IconThemeData(color: primaryColor),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
      error: errorColor,
    ),
    inputDecorationTheme: inputDecorationTheme,
  );
}

const appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);
final inputDecorationTheme = InputDecorationTheme(
  filled: true,
  fillColor: colorDarkTheme.withOpacity(0.08),
  contentPadding: const EdgeInsets.symmetric(
      horizontal: defaultPadding * 1.5, vertical: defaultPadding),
  border: const OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(Radius.circular(50)),
  ),
);
