import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_course/constants/colors.dart';
import 'package:learning_course/constants/strings.dart';
import 'package:learning_course/view/screens/auth/login_screen.dart';
import 'package:learning_course/bottom_navigation.dart';
import 'package:learning_course/view/screens/auth/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: const Locale('fa'),
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
              primary: primaryColor,
              secondary: secondaryColor,
              brightness: Brightness.light),
          scaffoldBackgroundColor: backgroundColor,
          primarySwatch: Colors.deepPurple,
          fontFamily: 'IranSans',
          textTheme: TextTheme(
            headline1: TextStyle(
              fontSize: 32,
              color: primaryTextColor,
            ),
            headline2: TextStyle(
                fontSize: 24,
                color: primaryTextColor,
                fontWeight: FontWeight.bold),
            headline3: TextStyle(
                fontSize: 16,
                color: primaryTextColor,
                fontWeight: FontWeight.bold),
            bodyText1: TextStyle(
              fontSize: 16,
              color: secondaryTextColor,
            ),
            bodyText2: TextStyle(
              fontSize: 14,
              color: secondaryTextColor,
            ),
            headline4: TextStyle(
              fontSize: 14,
              color: primaryColor,
            ),
            button: const TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  primary: primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1000)),
                  elevation: 16))),
      home: SignUpScreen(),
    );
  }
}
