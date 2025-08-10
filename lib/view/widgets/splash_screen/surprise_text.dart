import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SurpriseText extends StatelessWidget {
  const SurpriseText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Surprise !",style: GoogleFonts.sofia(   color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,));
  }
}
