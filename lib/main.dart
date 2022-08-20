import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
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
                SizedBox(height: 10,),
                Container(
                  width: 245,
                  height: 109,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Text(
                        "Taxi",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xfffec02a),
                          fontSize: 90,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "o",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xfffec02a),
                          fontSize: 90,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                CupertinoActivityIndicator(
                  radius: 30,
                  color: Colors.deepOrange,
                )
              ],
            )
          ),
          nextScreen: SplashScreen(),
          splashTransition: SplashTransition.fadeTransition,
          splashIconSize: 600,

        ),
      )
    );
  }
}
