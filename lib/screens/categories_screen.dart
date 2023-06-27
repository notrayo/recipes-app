// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import '../data/dummy_data_categories.dart';
import '../widgets/category_item.dart';
import '../models/meals.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key, required this.toogledMeals});

  final List<Meal> toogledMeals;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: const Text('Kenyan Meals')),
      body: GridView(
          padding: const EdgeInsets.all(30),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 350,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 60,
              mainAxisExtent: 150),
          children: dummyCategories
              .map((catData) =>
                  CategoryItem(catData.id, catData.title, catData.color))
              .toList()),
    );
  }
}
