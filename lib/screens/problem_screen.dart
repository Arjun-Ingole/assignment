import 'package:assignment/models/problem_model.dart';
import 'package:assignment/widgets/navBar.dart';
import 'package:assignment/widgets/problemCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProblemScreen extends StatelessWidget {
  const ProblemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final problemData = ModalRoute.of(context)?.settings.arguments as Problem;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: navBar(),
      appBar: AppBar(
        title: const Text("Problem"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: size.width,
              decoration:
                  BoxDecoration(gradient: getGradient(problemData.difficulty)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  problemData.id,
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 36),
                ),
              ),
            ),
            bubbleRow(problemData.topic, problemData.difficulty),
            Container(
                padding: const EdgeInsets.all(8),
                child: Text(problemData.description)),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                  width: size.width,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(4)),
                  child: Text(problemData.example)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/code', arguments: problemData);
                },
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.lightBlue),
                  child: Text(
                    "Solve",
                    textAlign: TextAlign.center,
                    style:
                        GoogleFonts.poppins(color: Colors.white, fontSize: 36),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
