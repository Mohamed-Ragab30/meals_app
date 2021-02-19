import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_screen.dart';
import './screens/category_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.lightBlueAccent,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText2: TextStyle(
                  //fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.normal,
                  color: Color.fromRGBO(20, 51, 51, 1),
                  fontSize: 20,
                  fontStyle: FontStyle.italic),
              bodyText1: TextStyle(
                  //fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.normal,
                  color: Color.fromRGBO(20, 51, 51, 1),
                  fontSize: 20,
                  fontStyle: FontStyle.italic),
              headline6: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      // home: CategoriesScreen(),
      routes: {
        '/': (context) => CategoriesScreen(),
        CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
      },
    );
  }
}
