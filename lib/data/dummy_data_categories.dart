import 'package:flutter/material.dart';

import '../models/category.dart';
import '../models/meals.dart';

const dummyCategories = [
  Category(
    id: 'c9',
    title: 'Breakfast',
    color: Color.fromARGB(255, 54, 30, 233),
  ),
  Category(
    id: 'c7',
    title: 'Nyama',
    color: Color.fromARGB(255, 135, 6, 6),
  ),
  Category(
    id: 'c6',
    title: 'Greens',
    color: Colors.green,
  ),
  Category(
    id: 'c2',
    title: 'Rice / Ugali',
    color: Colors.brown,
  ),
  Category(
    id: 'c4',
    title: 'Fish and Chips',
    color: Colors.amber,
  ),
  Category(
    id: 'c1',
    title: 'Githeri / Mukimo',
    color: Colors.purple,
  ),
];

//mealrecipes

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'Githeri Special',
    affordability: Affordability.cheap,
    complexity: Complexity.simple,
    imageUrl: 'assets/images/githeri.jpeg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of salt',
      '2 onions',
      '1 avocado',
      '2 danias',
      '3 cups of beans and maize',
      'ka firifiri'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the beans and maize into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, chapa ka kachumbary by mixing tomatoes, onions, ovacado na dania.',
      'once ready, mix and serve'
    ],
    //isGlutenFree: false,
    isVegan: true,
    //isVegetarian: true,
    //isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: ['c2', 'c7'],
    title: 'Ugali Beef',
    affordability: Affordability.expe,
    complexity: Complexity.mid,
    imageUrl: 'assets/images/ugali_beef.jpeg',
    duration: 20,
    ingredients: [
      '1/2 KG ya beef',
      '1 kg of unga ya uali',
      'nyanya, vitungu, pilipili',
      'mafuta'
    ],
    steps: [
      'Boil maji ya ugali and prepare when ready.',
      'Boil nyama hadi maji iishe.',
      'Add mafuta and fry the meat',
      'In the meantime, cut up onions and pilipili and add kwa nyama.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'Once ready, eka low heat and let the beef simmer',
      'ongeza ka kachu',
      'Serve na uenjoy.'
    ],
    //isGlutenFree: false,
    isVegan: false,
  ),
  Meal(
    id: 'm3',
    categories: ['c2', 'c6'],
    title: 'Ugali sukuma',
    affordability: Affordability.cheap,
    complexity: Complexity.simple,
    imageUrl: 'assets/images/ugali sukuma.jpeg',
    duration: 20,
    ingredients: [
      '10 leaves of sukuma and spinach',
      '1 kg of unga ya ugali',
      'nyanya, vitungu, pilipili',
      'mafuta'
    ],
    steps: [
      'Boil maji ya ugali and prepare when ready.',
      'In the meantime, cut up onions and pilipili ',
      'Prepare stew on the side.',
      //'Add mafuta and fry the meat',

      //'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'Once ready, eka low heat and let the stew simmer',
      //'ongeza ka kachu',
      'Serve na uenjoy.'
    ],
    //isGlutenFree: false,
    isVegan: true,
  ),
  Meal(
    id: 'm4',
    categories: ['c4', 'c7'],
    title: 'Chips and Kuku',
    affordability: Affordability.expe,
    complexity: Complexity.difficult,
    imageUrl: 'assets/images/chipo kuku.jpeg',
    duration: 90,
    ingredients: [
      '1/2 Kg of Chicken',
      'Potatoes(better when cut into chips)',
      'nyanya, vitungu, pilipili',
      'mafuta'
    ],
    steps: [
      'fry the cut up potatoes until chips is ready and close',
      'boil the chicken',
      'once ready, fry the chicken and add the tomatoes',
      'let it simmer',
      'serve the chips and kuku...better with stew'
    ],
    //isGlutenFree: false,
    isVegan: false,
  ),
  Meal(
    id: 'm6',
    categories: ['c9'],
    title: 'Chai Mayai Boiro',
    affordability: Affordability.beiSawa,
    complexity: Complexity.simple,
    imageUrl: 'assets/images/sliced-boiled-eggs-with-cup-of-tea-TYT9RT.jpg',
    duration: 15,
    ingredients: ['2/3 eggs', 'Water', 'Strungi (tea leaves)', 'Bread'],
    steps: [
      'Boil the eggs and ensure they hard',
      'Prep tea',
      'Prep bread',
      'Serve'
    ],
    //isGlutenFree: false,
    isVegan: false,
  ),
  Meal(
    id: 'm7',
    categories: ['c9'],
    title: 'Chai Ndazi',
    affordability: Affordability.beiSawa,
    complexity: Complexity.simple,
    imageUrl: 'assets/images/chai ndazi.jpeg',
    duration: 20,
    ingredients: [
      'baking flour',
      'Water',
      'Strungi (tea leaves)',
      'Cooking Oil'
    ],
    steps: [
      'Bake / fry the baking flour hazi ziwe ndazi...idk how',
      'Prep tea',
      'Serve'
    ],
    //isGlutenFree: false,
    isVegan: true,
  ),
  Meal(
    id: 'm8',
    categories: ['c1'],
    title: 'Mukimo',
    affordability: Affordability.beiSawa,
    complexity: Complexity.mid,
    imageUrl: 'assets/images/mukimo.jpeg',
    duration: 80,
    ingredients: [
      'Potatoes',
      'Water',
      'Greens (dania kwanza)',
      'Maize',
      'Cooking Oil'
    ],
    steps: ['??', 'Serve'],
    //isGlutenFree: false,
    isVegan: true,
  ),
];
