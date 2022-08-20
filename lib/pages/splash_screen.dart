import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';
import 'package:taxiapp/pages/pages.dart';

class SplashScreen extends StatefulWidget {
  static const String id = "";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/image 2.png',
              fit: BoxFit.cover,
            ),
          ),
          const Positioned(
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
              children: const [
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
          ), //Slider Buttn
          Positioned(
            top: 700,
            child: Center(child: SliderButton(
              //slider
              backgroundColor: Colors.white.withOpacity(0.7),
              width: 392,
              action: () {

                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => const Pages()));
              },

                alignLabel: Alignment.center,
              label: Text(

                "Boshlash",
                style: TextStyle(
                    color: Color(0xff4a4a4a), fontWeight: FontWeight.w500, fontSize: 22,),
              ),
                baseColor: Colors.orange,
              icon:Image.asset('assets/images/taxi car.png')
                

            ))
          ),

        ],
      ),
    );
  }
}
