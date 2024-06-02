import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mybutton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  mybutton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 70,
      onPressed: onPressed,
      color: Color.fromARGB(255, 20, 20, 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.only(top: 7, bottom: 7),
      child: Text(
        text,
        style: GoogleFonts.poppins(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
