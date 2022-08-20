import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:taxiapp/pages/pages.dart';

class SplashScreen extends StatefulWidget {
  static final String id = "";
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
              top: 50,
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
              top: 100,
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
            const Positioned(
              top: 200,
              left: 30,
              child: Text(
                "Asrning eng yaxshi taksi bron qilish ilovasida\nkuningizni ajoyib o'tkazing!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: "Jost",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            //Slider pages
            Positioned(
              top: 700,
              child: SlideAction(
                text: "Boshlash",
                innerColor: Colors.white,
                outerColor: Colors.white.withOpacity(0.7),
                sliderButtonIcon: Icon(Icons.local_taxi_sharp),
                onSubmit: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Pages())),
                submittedIcon: Icon(
                  Icons.local_taxi,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
