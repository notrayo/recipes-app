import 'package:flutter/material.dart';

import './categories_screen.dart';
import './favs_screen.dart';
import './drawer.dart';

class TabsScreen extends StatefulWidget {
  //const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  // instantiating which page no when category is tapped

  //pages to show

  final List<Map<String, Object>> _pages = [
    {'page': CategoriesScreen(), 'title': 'Categories'},
    {'page': FavsScreen(), 'title': 'Favourites'}
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _selectScreenFromDrawer(String identifier) {
    if (identifier == 'Favourites') {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const FavsScreen(),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
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
