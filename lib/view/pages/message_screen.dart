
import 'package:birthday_app/view/widgets/animated_icon.dart';
import 'package:birthday_app/view/widgets/message_screen/confetti.dart';
import 'package:birthday_app/view/widgets/message_screen/message.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  late ConfettiController _controllerTopCenter;
  @override
  void initState() {
    super.initState();
    _controllerTopCenter = ConfettiController(duration: Duration(minutes: 30));
    _controllerTopCenter.play();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.purple, Colors.purpleAccent],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Stack(
                children: [
                Confetti(confettiController: _controllerTopCenter,left: 100,),
                    Confetti(confettiController: _controllerTopCenter,right: 100,),
                  Column(
                    children: [
                      SizedBox(height: 40),
                      AnimatedIconContainer(),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 20,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Message(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
