import 'package:flutter/material.dart';


class AuthTab extends StatelessWidget {
  const AuthTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          unselectedLabelStyle: const TextStyle(color: Colors.white),
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
