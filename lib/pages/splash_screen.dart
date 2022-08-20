import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static final String id="";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'assets/images/image 2.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 550,
              left: 30,
              child: Text(
                "Xush Kelibsiz!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              top: 600,
              left: 30,
              child: Row(
                children: [
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
            Positioned(
              top: 700,
              left: 30,
              child: Text(
                "Asrning eng yaxshi taksi bron qilish ilovasida\nkuningizni ajoyib o'tkazing!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: "Jost",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
