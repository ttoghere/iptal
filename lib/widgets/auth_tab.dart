import 'package:flutter/material.dart';

class AuthTab extends StatefulWidget implements PreferredSizeWidget {
  const AuthTab({
    Key? key,
  }) : super(key: key);

  @override
  State<AuthTab> createState() => _AuthTabState();

  @override
  Size get preferredSize => const Size.fromHeight(75);
}

class _AuthTabState extends State<AuthTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: TabBar(
          indicator: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          labelColor: Colors.black,
          unselectedLabelColor: Colors.white,
          tabs: const [
            Tab(
              text: "Sign Up",
            ),
            Tab(
              text: "Sign In",
            )
          ],
        ),
      ),
    );
  }
}
