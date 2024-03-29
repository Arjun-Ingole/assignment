import 'package:assignment/screens/code_screen.dart';
import 'package:assignment/screens/home_screen.dart';
import 'package:assignment/screens/problem_screen.dart';

final routes = {
  '/': (context) => const HomeScreen(),
  '/problem': (context) => const ProblemScreen(),
  '/code': (context) => const CodeScreen(),
};
