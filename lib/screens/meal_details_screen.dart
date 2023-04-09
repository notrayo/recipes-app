import 'package:flutter/material.dart';

import '../data/dummy_data_categories.dart';

class MealDetailsScreen extends StatelessWidget {
  //const MealDetailsScreen({super.key});

  static const routeName = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    final mealID = ModalRoute.of(context)!.settings.arguments as String;
    // define id for correct image and info selection
    final selectedMeal = dummyMeals.firstWhere((meal) => meal.id == mealID);
    return Scaffold(
        appBar: AppBar(
          title: Text(selectedMeal.title),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            //ingredients widget
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              child: Text('Ingredients',
                  style: Theme.of(context).textTheme.titleMedium),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white10,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              height: 200,
              width: 350,
              child: ListView.builder(
                  itemBuilder: (context, index) => Card(
                        color: Color.fromARGB(255, 136, 184, 206),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(selectedMeal.ingredients[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic)),
                        ),
                      ),
                  itemCount: selectedMeal.ingredients.length),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              child:
                  Text('Steps', style: Theme.of(context).textTheme.titleMedium),
            ),
            /*SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white10,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                height: 200,
                width: 250,
                child: ListView.builder(
                    itemBuilder: (context, index) => ListTile(
                          leading: CircleAvatar(
                            child: Text('# ${(index + 1)}'),
                          ),
                          title: Text(selectedMeal.steps[index]),
                        ),
                    itemCount: selectedMeal.steps.length),
              ),
            )*/
          ],
        ));
  }
}
