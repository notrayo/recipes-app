import 'package:flutter/material.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
//price state

  var _cheapPriceState = false;
  var _simpleMealState = false;
  var _veganState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Meal Filters ...'),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            SwitchListTile(
              value: _veganState,
              onChanged: (isChanged) {
                setState(() {
                  _veganState = isChanged;
                });
              },
              title: Text(
                'Vegan',
                //style: Theme.of(context).textTheme.bodyLarge!,
              ),
              subtitle: Text('only include meals without meat'),
              secondary: const Icon(Icons.spa_outlined),
            ),
            SizedBox(
              height: 20,
            ),
            SwitchListTile(
              value: _cheapPriceState,
              onChanged: (isChanged) {
                setState(() {
                  _cheapPriceState = isChanged;
                });
              },
              title: Text(
                'Price',
                //style: Theme.of(context).textTheme.bodyLarge!,
              ),
              subtitle: Text('only include cheap prices'),
              secondary: const Icon(Icons.price_change_outlined),
            ),
            SizedBox(
              height: 20,
            ),
            SwitchListTile(
              value: _simpleMealState,
              onChanged: (isChanged) {
                setState(() {
                  _simpleMealState = isChanged;
                });
              },
              title: Text(
                'Simplicity',
                //style: Theme.of(context).textTheme.bodyLarge!,
              ),
              subtitle: Text('only include simple to cook meals'),
              secondary: const Icon(Icons.lunch_dining_outlined),
            )
          ],
        ));
  }
}
