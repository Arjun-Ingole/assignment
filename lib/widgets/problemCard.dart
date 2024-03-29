import 'package:assignment/models/problem_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

Widget problemCard(Problem problem, BuildContext context) {
  var size = MediaQuery.of(context).size;
  return UnconstrainedBox(
    child: GestureDetector(
      onTap: () {
        HapticFeedback.mediumImpact();
        Navigator.pushNamed(context, '/problem', arguments: problem);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        width: size.width * 0.95,
        height: 115,
        decoration: BoxDecoration(
          gradient: getGradient(problem.difficulty),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 8, 8, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(problem.id,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.w400)),
              Text(
                "Difficulty: ${problem.difficulty}",
                style: GoogleFonts.poppins(color: Colors.white),
              ),
              const SizedBox(
                height: 4,
              ),
              bubbleRow(problem.topic, problem.difficulty),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget bubbleRow(List<String> topics, String difficulty) {
  return Row(
    children: topics
        .map((e) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              margin: const EdgeInsets.only(right: 4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                e,
                style: TextStyle(color: getColor(difficulty)),
              ),
            ))
        .toList(),
  );
}

LinearGradient getGradient(String difficulty) {
  if (difficulty == "Easy") {
    return const LinearGradient(
      colors: [Color(0xff1d976c), Color(0xff93f9b9)],
      stops: [0, 1],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    );
  } else if (difficulty == "Medium") {
    return const LinearGradient(
      colors: [Color(0xffff8008), Color(0xffffc837)],
      stops: [0, 1],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    );
  } else {
    return const LinearGradient(
      colors: [Color(0xffeb3349), Color(0xfff45c43)],
      stops: [0, 1],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }
}

Color getColor(String difficulty) {
  if (difficulty == "Easy") {
    return const Color(0xff1d976c);
  } else if (difficulty == "Medium") {
    return const Color(0xffff8008);
  } else {
    return const Color(0xffeb3349);
  }
}
