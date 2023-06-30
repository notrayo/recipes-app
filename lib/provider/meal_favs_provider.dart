import 'package:flutter/material.dart';

import '../models/meals.dart';

class MealProvider with ChangeNotifier {
  List<Meal> _favouriteMeals = [];

  List<Meal> get favouriteMeals => _favouriteMeals;

  void toogleFavourite(Meal meal) {
    if (_favouriteMeals.contains(meal)) {
      _favouriteMeals.remove(meal);
    } else {
      _favouriteMeals.add(meal);
    }
    notifyListeners();
  }

  bool isMealFavourite(Meal meal) {
    return _favouriteMeals.contains(meal);
  }
}
