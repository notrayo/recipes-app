import 'package:flutter/material.dart';

//stateless

class CategoryMealsScreen extends StatelessWidget {
  const CategoryMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('recipe chosen...')),
        body: Center(
          child: Text('Recipy for this category'),
        ));
  }
}
