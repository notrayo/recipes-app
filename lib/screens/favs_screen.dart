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
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(meal.imageUrl),
                    ),
                    title: Text(meal.title),
                    subtitle: Text('Duration: ${meal.duration} minutes'),
                    
                    //trailing: Text('The meal is ${meal.affordability}'),
                  ),
                ),
              );
            }));
  }
}
