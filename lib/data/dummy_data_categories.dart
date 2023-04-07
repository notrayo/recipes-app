import 'package:flutter/material.dart';

import '../models/category.dart';
import '../models/meals.dart';

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
    title: 'Kachumbari',
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
      'c7',
    ],
    title: 'Githeri smat',
    affordability: Affordability.cheap,
    complexity: Complexity.simple,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_SL8P-rRETERL2Bbp1s0IActBGmkQjGl9tg&usqp=CAU',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of salt',
      '2 onions'
          '1 avocado',
      '2 danias'
          '3 cups of beans and maize'
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
    categories: ['c2', 'c3', 'c7'],
    title: 'Ugali na beef stew',
    affordability: Affordability.expe,
    complexity: Complexity.mid,
    imageUrl:
        'http://amaizefoods.com/images/lunch-recipes/amaize-pap-squares-cream-spinach-lg.jpg',
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
    categories: ['c3', 'c6'],
    title: 'Ugali sukuma',
    affordability: Affordability.cheap,
    complexity: Complexity.simple,
    imageUrl:
        'https://i0.wp.com/www.k24tv.co.ke/wp-content/uploads/2021/10/Ugali-mboga.jpg?resize=768%2C432&ssl=1',
    duration: 20,
    ingredients: [
      '10 leaves of sukuma and spinach',
      '1 kg of unga ya uali',
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
    categories: ['c4', 'c8'],
    title: 'Chips and Kuku',
    affordability: Affordability.expe,
    complexity: Complexity.difficult,
    imageUrl:
        'https://media.istockphoto.com/id/824623884/photo/grilled-chicken-legs-with-chips-and-vegetables.jpg?s=612x612&w=is&k=20&c=-TU9HpEmlvrmeIvMSoryh304nEaF7yQPCnPkURH-IRQ=',
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
];
