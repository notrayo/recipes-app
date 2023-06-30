import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/meal_favs_provider.dart';

class FavsScreen extends StatelessWidget {
  const FavsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mealProvider = Provider.of<MealProvider>(context);
    final favouriteMeals = mealProvider.favouriteMeals;

    return Scaffold(
        // /*appBar: AppBar(
        //   title: Text('favs page'),
        // ),*/
        body: ListView.builder(
            itemCount: favouriteMeals.length,
            itemBuilder: (ctx, index) {
              final meal = favouriteMeals[index];
              return ListTile(
                title: Text(meal.title),
              );
            }));
  }
}
