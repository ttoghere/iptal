import 'package:crewinjobapplication/screens/screens_shelf.dart';
import 'package:crewinjobapplication/widgets/widgets_shelf.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_left,
              color: Colors.black,
            ),
            onPressed: () {
              if (Navigator.of(context).canPop()) {
                Navigator.pop(context);
              } else {
                return;
              }
            },
          ),
          bottom: const AuthTab(),
        ),
        body: const TabBarView(
          children: [
            RegisterPage(),
            LoginPage(),
          ],
        ),
      ),
    );
  }
}
