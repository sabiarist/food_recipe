import 'package:flutter/material.dart';
import 'package:food_recipe/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Recipe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Arial',
        primarySwatch: Colors.red,
        primaryColor: Colors.white,
        textTheme: const TextTheme(
          headline6: TextStyle(
            fontSize: 25.0,
          ),
          bodyText2: TextStyle(
              fontSize: 14.0,
              fontFamily: 'Hind',
              color: Colors.white),
        ),
      ),
      home: const HomePage(),
    );
  }
}
