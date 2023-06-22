import 'package:flutter/material.dart';
import 'package:meals_app/screens/category_meals_screen.dart';
// import 'package:meals_app/category_meals_screen.dart';
//import 'dart:async';

//import './dummy_data_categories.dart';

class CategoryItem extends StatelessWidget {
  //const CategortItem({super.key});

  final String id;

  final String title;
  final Color color;

  const CategoryItem(this.id, this.title, this.color);

  //page switch on button press

  void selectCategory(BuildContext contextCateg) {
    Navigator.of(contextCateg).pushNamed(CategoryMealsScreen.routeName,
        arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        onTap: () => selectCategory(context),
        splashColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10),
        child: Container(
            height: 120,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  color.withOpacity(0.7),
                  color,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            )),
      ),
    );
  }
}
