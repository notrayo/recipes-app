import 'package:flutter/material.dart';
import '../models/meals.dart';
import '../screens/meal_details_screen.dart';

class MealItem extends StatelessWidget {
  // const MealItem({super.key});

  //properties for displaying meals
  final String id;

  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  //constructor
  const MealItem(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.duration,
      required this.affordability,
      required this.complexity});

  // complexity enum definition

  String get complexityText {
    switch (complexity) {
      case Complexity.simple:
        {
          return 'Simple';
        }
      case Complexity.mid:
        {
          return 'Mid';
        }
      case Complexity.difficult:
        {
          return 'Tricky';
        }
      default:
        return 'Unknown';
    }
  }

  // affordability enum def

  String get affordabilityText {
    switch (affordability) {
      case Affordability.cheap:
        {
          return 'cheap';
        }
      case Affordability.beiSawa:
        {
          return 'bei sawa';
        }
      case Affordability.expe:
        {
          return 'expe';
        }
      default:
        return 'Unknown';
    }
  }

  void selectMeal(BuildContext context) {
    //go to meal details screen after tapping a meals widget
    Navigator.of(context).pushNamed(MealDetailsScreen.routeName, arguments: id);
  }

  //enum translation

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        //elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.asset(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                //add title, difficulty on top of the image widgets
                Positioned(
                  bottom: 20,
                  left: 10,
                  child: Container(
                    width: 320,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            //add row that will give info below the image
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        // ...
                        Icon(Icons.schedule_outlined),
                        SizedBox(width: 4),
                        Text('$duration min'),
                        SizedBox(width: 6),
                        Icon(Icons.construction),
                        SizedBox(width: 4),
                        Text(complexityText),
                        SizedBox(width: 4),
                        Icon(Icons.price_check),
                        SizedBox(width: 4),
                        Text(affordabilityText),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
