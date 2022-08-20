import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:taxiapp/pages/splash_screen.dart';
import 'package:taxiapp/pages/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Center(
        child: AnimatedSplashScreen(
          splash:Container(
            height: 410,
            width: 389,
            child: Column(
              children: [
                Image.asset('assets/images/Group 4.png'),
                Text("M Y  T A X I",style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,color: Colors.yellow),)
              ],
            )
          ),
          nextScreen: SplashScreen(),
          splashTransition: SplashTransition.decoratedBoxTransition,
          splashIconSize: 600,
        ),
      )
    );
  }
}
