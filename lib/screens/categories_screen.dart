// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import '../data/dummy_data_categories.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kenyan Meals')),
      body: GridView(
          padding: const EdgeInsets.all(26),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisExtent: 140),
          children: dummyCategories
              .map((catData) =>
                  CategoryItem(catData.id, catData.title, catData.color))
              .toList()),
    );
  }
}
