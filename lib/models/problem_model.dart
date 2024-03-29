import 'dart:convert';

Problem problemFromMap(String str) => Problem.fromMap(json.decode(str));

class Problem {
  String id;
  String difficulty;
  List<String> topic;
  String description;
  String example;

  Problem({
    required this.id,
    required this.difficulty,
    required this.topic,
    required this.description,
    required this.example,
  });

  Problem copyWith({
    String? id,
    String? difficulty,
    List<String>? topic,
    String? description,
    String? example,
  }) =>
      Problem(
        id: id ?? this.id,
        difficulty: difficulty ?? this.difficulty,
        topic: topic ?? this.topic,
        description: description ?? this.description,
        example: example ?? this.example,
      );

  factory Problem.fromMap(Map<String, dynamic> json) => Problem(
        id: json["id"],
        difficulty: json["difficulty"],
        topic: List<String>.from(json["topic"].map((x) => x)),
        description: json["description"],
        example: json["example"],
      );
}
