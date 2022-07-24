import 'package:crewinjobapplication/screens/screens_shelf.dart';
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
      home:const GenderScreen(),
    );
  }
}
