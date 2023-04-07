import 'package:flutter/material.dart';

class MealDetailsScreen extends StatelessWidget {
  //const MealDetailsScreen({super.key});

  static const routeName = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    final mealID = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
        appBar: AppBar(
          title: Text(mealID),
        ),
        body: Center(
            child: Text('Meal Details Screen... for thus is - $mealID')));
  }
}
