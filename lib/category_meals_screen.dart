import 'package:flutter/material.dart';

//stateless

class CategoryMealsScreen extends StatelessWidget {
  //const CategoryMealsScreen({super.key});

  final String categoryID;
  final String categoryTitle;

  const CategoryMealsScreen(this.categoryID, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(categoryTitle)),
        body: Center(
          child: Text('Recipy for this category'),
        ));
  }
}
