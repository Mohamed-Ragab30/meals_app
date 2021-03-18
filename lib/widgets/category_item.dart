import 'package:flutter/material.dart';
import 'package:meals_app/screens/category_meals_screen.dart';

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
          alignment: Alignment.center,
          child: Text(
            title,
            style: ThemeData.light().textTheme.bodyText1.copyWith(fontSize: 20),
          ),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color.withOpacity(0.7),
                color,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ));
  }
}
