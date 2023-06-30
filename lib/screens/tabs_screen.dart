import 'package:flutter/material.dart';

import '../models/meals.dart';
import './categories_screen.dart';
import './favs_screen.dart';
import './drawer.dart';
import './filters_screen.dart';
import '../data/dummy_data_categories.dart';

const InitialFilters = {Filter.vegan: false};

class TabsScreen extends StatefulWidget {
  //const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  // instantiating which page no when category is tapped

  //pages to show

  final List<Map<String, Object>> _pages = [
    {
      'page': CategoriesScreen(
        toogledMeals: [],
      ),
      'title': 'Categories'
    },
    {'page': FavsScreen(), 'title': 'Favourites'}
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  //storing the toogled filters
  Map<Filter, bool> _toogledFilters = InitialFilters;

  void _selectScreenFromDrawer(String identifier) async {
    //added pop function to close the drawer after a page has been navigated to..
    Navigator.of(context).pop();
    if (identifier == 'Filters') {
      // Navigator.of(context).pop();
      //pushing results of the filter on the main tabs page
      final result =
          await Navigator.of(context).push<Map<Filter, bool>>(MaterialPageRoute(
        builder: (context) => const FiltersScreen(),
      ));
      setState(() {
        _toogledFilters = result ?? InitialFilters;
      });
    } else {
      Navigator.of(context).pop();
    }
  }

  //favourites state mgmt
  final List<Meal> _favouriteMeals = [];

  void _toggleFavMeals(Meal meal) {
    final isExisting = _favouriteMeals.contains(meal);

    if (isExisting) {
      _favouriteMeals.remove(meal);
    } else {
      _favouriteMeals.add(meal);
    }
  }

  @override
  Widget build(BuildContext context) {
    final availableMeals = dummyMeals.where((meal) {
      if (_toogledFilters[Filter.vegan]! && !meal.isVegan) {
        return false;
      }
      return true;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title'] as String? ?? ''),
      ),
      body: _pages[_selectedPageIndex]['page'] as Widget?,
      //drawer
      drawer: DrawerScreen(onSelectScreenFromDrawer: _selectScreenFromDrawer),
      bottomNavigationBar: BottomNavigationBar(
        //type: BottomNavigationBarType.shifting,
        onTap: _selectPage,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.category_sharp), label: 'Category'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favs'),
        ],
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white70,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        currentIndex: _selectedPageIndex,
      ),
    );
  }
}
