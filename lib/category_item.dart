import 'package:flutter/material.dart';
//import 'dart:async';

//import './dummy_data_categories.dart';

class CategoryItem extends StatelessWidget {
  //const CategortItem({super.key});

  final String title;
  final Color color;

  const CategoryItem(this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
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
        ));
  }
}
