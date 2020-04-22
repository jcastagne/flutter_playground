import 'package:flutter/material.dart';

ThemeData toulouseTheme = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor: Colors.black,
  accentColor: Colors.red,
  brightness: Brightness.dark,
  appBarTheme: AppBarTheme(
    color: Colors.red,
  ),
);

ThemeData bayonneTheme = ThemeData(
    primarySwatch: Colors.lightBlue,
    primaryColor: Colors.white,
    accentColor: Colors.lightBlue,
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
        color: Colors.lightBlue,
        actionsIconTheme: IconThemeData(color: Colors.white)));

ThemeData daxTheme = ThemeData(
    primarySwatch: Colors.red,
    primaryColor: Colors.white,
    accentColor: Colors.red,
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
        color: Colors.red, actionsIconTheme: IconThemeData(color: Colors.red)));
