import 'package:flutter/material.dart';
import 'package:plant_app/auth/login.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/pages/profile.dart';
import 'package:plant_app/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}
// main page
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/profile': (context) => ProfileScreen(),
        '/login': (context) => LoginPage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'PLANTIFY',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: LoginPage(),

    );
  }
}
