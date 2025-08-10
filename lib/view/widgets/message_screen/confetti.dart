import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class Confetti extends StatelessWidget {
  final  ConfettiController confettiController;
 final double? right;
final  double? left;
  const Confetti({super.key, required this.confettiController, this.right, this.left});

  @override
  Widget build(BuildContext context) {
    return   Positioned(
                    top: 0,
                    right: right,
                        left:  left,
                    child: ConfettiWidget(
                      confettiController: confettiController,
                      blastDirection: 3.14,
                      blastDirectionality:
                          BlastDirectionality.explosive, // أضف هذا
                      emissionFrequency: 0.1,
                      numberOfParticles: 100,
                      minimumSize: const Size(8, 8),
                      maximumSize: const Size(20, 20),
                      gravity: 1,
                    ),
                  )
                ;
  }
}