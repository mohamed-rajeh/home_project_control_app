import 'package:flutter/material.dart';
import 'package:hous_project_dashbord/components/constants/app_them.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: "Cairo",
  brightness: Brightness.light,
  shadowColor: AppThem.primaryColor,
  scaffoldBackgroundColor: Colors.grey.shade200,
  appBarTheme:
      const AppBarTheme(backgroundColor: Colors.transparent, elevation: 0),
  colorScheme: ColorScheme.light(
      background: AppThem.white,
      primary: AppThem.primaryColor,
      secondary: AppThem.secondaryColor,
      shadow: AppThem.black),
);
