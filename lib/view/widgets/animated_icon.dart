import 'package:flutter/material.dart';

class AnimatedIconContainer extends StatelessWidget {
  const AnimatedIconContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return    Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        "assets/hijab_girl.gif",
                        height: 110,
                        width: 55,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                );
  }
}