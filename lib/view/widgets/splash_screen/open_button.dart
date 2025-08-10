import 'package:birthday_app/view/pages/message_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OpenButton extends StatelessWidget {
  const OpenButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                 padding: EdgeInsets.symmetric(vertical: 20,horizontal: 130),

                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  child: MaterialButton(onPressed:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MessageScreen()));
                  },
                  color: Colors.white,
                  elevation: 0,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  
                     shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50)
        ),
                  child: Row(            
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Open  ",style: GoogleFonts.inconsolata(color: Colors.purple,   
                      fontSize: 20,
                      fontWeight: FontWeight.bold,)),
                      Icon(Icons.mail_outline_rounded,color: Colors.purple,)
                    ],
                  ),),
                );
  }
}