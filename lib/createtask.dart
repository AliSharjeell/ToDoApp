import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Create extends StatelessWidget {
  const Create({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
      child: Container(
        padding: EdgeInsets.all(70),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 247, 247, 247),
            borderRadius: BorderRadius.circular(25)),
        child: Row(
          children: [
            Text("Create",
                style: GoogleFonts.poppins(
                  fontSize: 30,
                ))
          ],
        ),
      ),
    );
  }
}
