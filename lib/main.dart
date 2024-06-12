import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pcos_app/consts/styles.dart';
import 'package:pcos_app/views/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //we are using getx so we have to change this material app into getmaterial app
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PCOSD APP',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
        fontFamily: regular,
      ),
      home: SplashScreen(),
    );
  }
}
