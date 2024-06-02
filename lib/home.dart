import 'package:flutter/material.dart';
import 'package:fulltodoapp/todotile.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List toDoList = [
    ["Do hw", true],
    ["Do Assignment", false],
    ["Make Video", false],
    ["Study For Quiz", false],
    ["Make Project", false],
    ["Help Friend", false]
  ];
  void checkboxchanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          toolbarHeight: 120,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          title: Text('   To Do',
              style: GoogleFonts.poppins(
                  fontSize: 50, fontWeight: FontWeight.bold)),
          elevation: 0,
        ),
        body: ListView.builder(
          itemCount: toDoList.length,
          itemBuilder: (context, index) {
            return ToDoTile(
                taskname: toDoList[index][0],
                taskcomplete: toDoList[index][1],
                onChanged: (value) => checkboxchanged(value, index));
          },
        ));
  }
}
