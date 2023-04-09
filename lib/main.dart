import 'package:flutter/material.dart';
import '/screens/tabs_screen.dart';
import 'screens/category_meals_screen.dart';
import 'screens/meal_details_screen.dart';

//import 'screens/categories_screen.dart';
// import './category_meals_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MealsRecipes',
      theme: ThemeData(
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyLarge: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              titleMedium: TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold)),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
              .copyWith(secondary: Colors.amber)),
      //home: const CategoriesScreen(),
      //initial route

      initialRoute: '/',

      routes: {
        '/': (context) => TabsScreen(),
        CategoryMealsScreen.routeName: (contextCateg) => CategoryMealsScreen(),
        //new route for meal details
        MealDetailsScreen.routeName: (context) => MealDetailsScreen()
      },
    );
  }
}
