import 'package:flutter/material.dart';
import '../data/dummy_data_categories.dart';
import '../widgets/meal_item.dart';

//stateless

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/categories-meals';
  //const CategoryMealsScreen({super.key});

  // final String categoryID;
  // final String categoryTitle;

  // const CategoryMealsScreen(this.categoryID, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    //route arguments
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryID = routeArgs['id'];
    //argument for recipes of each category

    final categoryMealsRecipe = dummyMeals.where(((meal) {
      return meal.categories.contains(categoryID);
    })).toList();
    return Scaffold(
        appBar: AppBar(title: Text(categoryTitle.toString())),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(
              title: categoryMealsRecipe[index].title,
              imageUrl: categoryMealsRecipe[index].imageUrl,
              duration: categoryMealsRecipe[index].duration,
              complexity: categoryMealsRecipe[index].complexity,
              affordability: categoryMealsRecipe[index].affordability,
            );
          },
          itemCount: categoryMealsRecipe.length,
        ));
  }
}
