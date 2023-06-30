import 'package:flutter/material.dart';
import 'package:meals_app/provider/meal_favs_provider.dart';
import 'package:provider/provider.dart';

import '../data/dummy_data_categories.dart';
import '../models/meals.dart';
import '../provider/meal_favs_provider.dart';

class MealDetailsScreen extends StatefulWidget {
  const MealDetailsScreen({super.key});

  static const routeName = '/meal-detail';

  @override
  State<MealDetailsScreen> createState() => _MealDetailsScreenState();
}

class _MealDetailsScreenState extends State<MealDetailsScreen> {
  // late void Function(Meal meal) onToggleFavourite;

  @override
  Widget build(BuildContext context) {
    final mealID = ModalRoute.of(context)!.settings.arguments as String;
    // define id for correct image and info selection
    final selectedMeal = dummyMeals.firstWhere((meal) => meal.id == mealID);
    //favourites provider

    final mealProvider = Provider.of<MealProvider>(context);
    final isFavourite = mealProvider.isMealFavourite(selectedMeal);

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
        actions: [
          IconButton(
              onPressed: () {
                mealProvider.toogleFavourite(selectedMeal);
              },
              icon: Icon(
                isFavourite ? Icons.star : Icons.star_border,
                color: isFavourite ? Color.fromARGB(255, 255, 236, 22) : null,
                size: 30,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width *
                    0.9, // adjust the width to make it smaller
                height: MediaQuery.of(context).size.height * 0.3,
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1.0),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 60, 59, 59).withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: const Offset(0, 2),
                    ),
                  ],
                  color: const Color.fromARGB(255, 242, 242, 242),
                ),
                // SizedBox(height: 20,),
                child: Image.asset(
                  selectedMeal.imageUrl, // Replace with the actual image path
                  fit: BoxFit.cover, // Adjust the fit as needed
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Ingredients widget
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'Ingredients',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white10,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              height: 200,
              width: 350,
              child: ListView.builder(
                itemBuilder: (context, index) => Card(
                  color: Color.fromARGB(255, 136, 184, 206),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      selectedMeal.ingredients[index],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
                itemCount: selectedMeal.ingredients.length,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // Container(
            //   margin: EdgeInsets.symmetric(vertical: 15),
            //   child: Text(
            //     'Steps',
            //     style: Theme.of(context).textTheme.titleMedium,
            //   ),
            // ),
            // SizedBox(
            //   height: 10,
            // ),

            // Container(
            //   decoration: BoxDecoration(
            //     color: Colors.white10,
            //     border: Border.all(color: Colors.grey),
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            //   margin: EdgeInsets.all(10),
            //   padding: EdgeInsets.all(10),
            //   height: 200,
            //   width: 350,
            //   child: SingleChildScrollView(
            //     // Wrap with SingleChildScrollView
            //     child: ListView.builder(
            //       physics:
            //           NeverScrollableScrollPhysics(), // Disable scrolling of the inner ListView
            //       itemBuilder: (context, index) => Card(
            //         color: Color.fromARGB(255, 136, 206, 152),
            //         child: Padding(
            //           padding: EdgeInsets.all(10),
            //           child: Text(
            //             selectedMeal.steps[index],
            //             style: TextStyle(
            //               fontWeight: FontWeight.bold,
            //               fontStyle: FontStyle.italic,
            //             ),
            //           ),
            //         ),
            //       ),
            //       itemCount: selectedMeal.steps.length,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
    ;
  }
}
