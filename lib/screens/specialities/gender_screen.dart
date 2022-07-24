// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:crewinjobapplication/widgets/widgets_shelf.dart';
import 'package:flutter/material.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({Key? key}) : super(key: key);

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 200,
            ),
            const Text(
              "What is your sex?",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GenderCard(
                    iconData: Icons.male,
                    text: "Male",
                    color: Colors.blue[900]!),
                GenderCard(
                  iconData: Icons.female,
                  text: "Female",
                  color: Colors.red[900]!,
                ),
              ],
            ),
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue[900],padding: EdgeInsets.all(20)),
                onPressed: () {},
                child: Text("Continue"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
