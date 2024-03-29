import 'package:assignment/models/exampleData.dart';
import 'package:assignment/models/problem_model.dart';
import 'package:assignment/widgets/navBar.dart';
import 'package:assignment/widgets/problemCard.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: navBar(),
      appBar: AppBar(
        title: const Text('Coding Juniors'),
      ),
      body: ListView(
        physics: const AlwaysScrollableScrollPhysics(
            parent: BouncingScrollPhysics()),
        children: problemsData
            .map((e) => problemCard(Problem.fromMap(e), context))
            .toList(),
      ),
    );
  }
}
