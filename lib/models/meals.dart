//import 'package:flutter/material.dart';
//import 'package:flutter/foundation.dart';

//complexity matrix

enum Complexity { simple, mid, difficult }

//bei

enum Affordability { cheap, beiSawa, expe }

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isVegan;

  const Meal(
      {required this.id,
      required this.categories,
      required this.title,
      required this.affordability,
      required this.complexity,
      required this.duration,
      required this.imageUrl,
      required this.ingredients,
      required this.isVegan,
      required this.steps});
}
