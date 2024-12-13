import 'package:flutter/material.dart';
import 'package:recette_app/screens/home_screnns.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? Key}): super(key: Key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Recette_APP',
        home: const HomeScrenns()
    );
  }
}
