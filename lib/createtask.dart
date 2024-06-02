import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fulltodoapp/button.dart';

class Create extends StatelessWidget {
  final controller;
  VoidCallback onSave;
   Create({super.key,required this.controller,required this.onSave});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
      child: Container(
        padding: EdgeInsets.only(top: 40, left: 40, right: 40, bottom: 20),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 247, 247, 247),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.stretch, // Stretch the children horizontally
          children: [
            TextField(
              controller: controller,
              style: GoogleFonts.poppins(
                fontSize: 20,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: "What To Do...",
                hintStyle: GoogleFonts.poppins(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
                height:
                    10), // Add vertical spacing between TextField and button
            Align(
              alignment: Alignment.centerRight, // Align the button to the right
              child: mybutton(
                text: "+",
                onPressed: onSave,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
