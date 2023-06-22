import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key, required this.onSelectScreenFromDrawer});

  final void Function(String identifier) onSelectScreenFromDrawer;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Theme.of(context).colorScheme.primaryContainer,
                Theme.of(context).colorScheme.primaryContainer.withOpacity(0.7)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
              child: Row(
                children: [
                  const Icon(Icons.restaurant),
                  const SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Kenyan Meals',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Colors.white),
                  ),
                ],
              )),
          ListTile(
            leading: const Icon(
              Icons.star,
              size: 30,
              color: Colors.black,
            ),
            title: Text(
              'Favourites',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colors.black),
            ),
            onTap: () {
              //control state

              //close drawer
              onSelectScreenFromDrawer('Favourites');
            },
          ),
        ],
      ),
    );
  }
}
