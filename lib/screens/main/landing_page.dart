import 'package:crewinjobapplication/widgets/widgets_shelf.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  LandingPage({
    Key? key,
  }) : super(key: key);

  List<String> imgList = [
    "images/fitness.jpg",
    "images/fitness2.jpg",
    "images/fitness3.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 50),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset("images/macfit.jpg"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Fitness App",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.email,
                    size: 40,
                  ),
                ),
                LinkIcon(imageRoute: "images/facebook.jpg", onTap: () {}),
                LinkIcon(imageRoute: "images/google.jpg", onTap: () {}),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white, onPrimary: Colors.black),
              onPressed: () {},
              icon: const Icon(Icons.person),
              label: const Text("Sign In Anonymously"),
            ),
          ],
        ),
      ),
    );
  }
}
