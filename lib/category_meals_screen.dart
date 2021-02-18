import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  const CategoryMealsScreen({Key key}) : super(key: key);
  static const routeName = 'CategoryMealsScreen';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    return Scaffold(
      appBar: (AppBar(
        title: Text(args['title']),
      )),
      body: Container(
        child: Center(child: Text('welcome to ${args['title']}')),
      ),
    );
  }
}
