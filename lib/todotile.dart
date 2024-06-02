import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ToDoTile extends StatelessWidget {
  final String taskname;
  final bool taskcomplete;
  Function(bool?)? onChanged;
  ToDoTile({
    super.key,
    required this.taskname,
    required this.taskcomplete,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
      child: Container(
        padding: EdgeInsets.all(40),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 247, 247, 247),
            borderRadius: BorderRadius.circular(25)),
        child: Row(
          children: [
            Transform.scale(
              scale: 1.75,
              child: Checkbox(
                value: taskcomplete,
                onChanged: onChanged,
                activeColor: Color.fromARGB(255, 0, 0, 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                checkColor: Color.fromARGB(255, 255, 255, 255),
                visualDensity: VisualDensity(vertical: -1, horizontal: -1),
              ),
            ),
            Text(taskname,
                style: GoogleFonts.poppins(
                    fontSize: 30,
                    decoration: taskcomplete
                        ? TextDecoration.lineThrough
                        : TextDecoration.none)),
          ],
        ),
      ),
    );
  }
}
