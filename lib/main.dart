import 'package:flutter/material.dart';
import 'package:flutter_start/utils/routes.dart';
import 'package:flutter_start/utils/themes.dart';
import 'package:flutter_start/views/homePage.dart';
import 'package:flutter_start/views/loginPage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute : (context)=> HomePage(),
        MyRoutes.loginRoute : (context) => LoginPage()
      },
      theme: MyThemes.lightTheme(context),
      darkTheme: MyThemes.darkTheme(context),
      themeMode: MyThemes.getThemeMode(),
    );
  }
}

