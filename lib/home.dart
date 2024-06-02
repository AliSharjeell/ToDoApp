import 'package:flutter/material.dart';
import 'package:fulltodoapp/todotile.dart';
import 'package:fulltodoapp/createtask.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller1 = TextEditingController();

  List toDoList = [];
  void checkboxchanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  void savenewtask() {
    setState(() {
      toDoList.add([controller1.text, false]);
      controller1.clear();
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
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0))),
          elevation: 0,
          scrolledUnderElevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('      Add',
                  style: GoogleFonts.poppins(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 20, 20, 20))),
              Create(
                controller: controller1,
                onSave: savenewtask,
              ),
              SizedBox(height: 20),
              Text('      Tasks',
                  style: GoogleFonts.poppins(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 20, 20, 20))),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: toDoList.length,
                itemBuilder: (context, index) {
                  return ToDoTile(
                    taskname: toDoList[index][0],
                    taskcomplete: toDoList[index][1],
                    onChanged: (value) => checkboxchanged(value, index),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
