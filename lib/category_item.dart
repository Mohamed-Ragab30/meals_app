import 'package:flutter/material.dart';
import 'package:meals_app/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String id;
  CategoryItem({this.color, this.id, this.title});
  @override
  Widget build(BuildContext context) {
    return InkWell(
        splashColor: Theme.of(context).primaryColor,
        onTap: () {
          Navigator.of(context).pushNamed(
            CategoryMealsScreen.routeName,
            arguments: {
              'id': id,
              'title': title,
            },
          );
        },
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Text(
              title,
            ),
          ),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color.withOpacity(0.7),
                color,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ));
  }
}
