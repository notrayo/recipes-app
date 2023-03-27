import 'package:flutter/material.dart';

//stateless

class CategoryMealsScreen extends StatelessWidget {
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
    return Scaffold(
        appBar: AppBar(title: Text(categoryTitle.toString())),
        body: Center(
          child: Text('Recipie for this category'),
        ));
  }
}
