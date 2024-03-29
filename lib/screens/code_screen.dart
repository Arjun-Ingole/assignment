import 'package:assignment/models/problem_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:flutter_highlight/themes/dracula.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:highlight/languages/python.dart';

class CodeScreen extends StatefulWidget {
  const CodeScreen({super.key});

  @override
  State<CodeScreen> createState() => _CodeScreenState();
}

class _CodeScreenState extends State<CodeScreen> {
  @override
  Widget build(BuildContext context) {
    final problemData = ModalRoute.of(context)?.settings.arguments as Problem;
    final controller = CodeController(text: '', language: python);

    return Scaffold(
      appBar: AppBar(
        title: Text("Solve - ${problemData.id}"),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(8),
        color: Colors.green,
        child: Text(
          'Submit',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(color: Colors.white, fontSize: 24),
        ),
      ),
      body: CodeTheme(
        data: CodeThemeData(styles: draculaTheme),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: CodeField(
            minLines: 25,
            gutterStyle: const GutterStyle(showLineNumbers: true),
            controller: controller,
          ),
        ),
      ),
    );
  }
}
