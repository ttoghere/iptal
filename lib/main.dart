import 'package:flutter/material.dart';
import 'screens/auth/auth_shelf.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: AuthPage(),
    );
  }
}
