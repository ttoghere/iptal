import 'package:crewinjobapplication/screens/specialities/age_page.dart';
import 'package:crewinjobapplication/screens/specialities/length_page.dart';
import 'package:crewinjobapplication/screens/specialities/weight_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home:const WeightPage(),
    );
  }
}
