import 'package:birthday_app/view/widgets/animated_icon.dart';
import 'package:birthday_app/view/widgets/splash_screen/open_button.dart';
import 'package:birthday_app/view/widgets/splash_screen/surprise_text.dart';
import 'package:birthday_app/view/widgets/splash_screen/timer.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   bool      vis=false;
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.purple, Colors.purpleAccent, Colors.purple.shade200],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            AnimatedIconContainer(),
                  SizedBox(height: 15),
            SurpriseText(),
                SizedBox(height: 15),
               Timer(onEnd:  () {
                        Future.delayed(Duration.zero,(){
                          setState(() {
                            vis=true;
                          });
                        });
                    },),

              vis == true ? OpenButton():SizedBox()

       
              ],
            ),
          ),
        ),
      ),
    );
  }
}






