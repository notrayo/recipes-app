import 'package:flutter/material.dart';

import './categories_screen.dart';
import './favs_screen.dart';

class TabsScreen extends StatefulWidget {
  //const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  // instantiating which page no when category is tapped

  //pages to show

  final List<Widget> _pages = [CategoriesScreen(), FavsScreen()];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('Meals App'),
      ),*/
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.category_sharp), label: 'Category'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favs'),
        ],
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
