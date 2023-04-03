import 'package:flutter/material.dart';

import './models/category.dart';
import './models/meals.dart';

const dummyCategories = [
  Category(
    id: 'c1',
    title: 'Githeri',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Beef Stew',
    color: Colors.brown,
  ),
  Category(
    id: 'c3',
    title: 'Ugali',
    color: Colors.grey,
  ),
  Category(
    id: 'c4',
    title: 'Chipo',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Chapati',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Sukuma na Spinach',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Omelette',
    color: Colors.yellow,
  ),
  Category(
    id: 'c8',
    title: 'Kuku Fry',
    color: Colors.redAccent,
  ),
  Category(
    id: 'c9',
    title: 'Uji',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Matumbo',
    color: Colors.teal,
  ),
];

//mealrecipes

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Spaghetti with Tomato Sauce',
    affordability: Affordability.cheap,
    complexity: Complexity.simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    //isGlutenFree: false,
    isVegan: true,
    //isVegetarian: true,
    //isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: ['c3', 'c4'],
    title: 'filler',
    affordability: Affordability.expe,
    complexity: Complexity.mid,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4 filler',
      '1 filler',
      '1 filler',
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    //isGlutenFree: false,
    isVegan: false,
  ),
];
