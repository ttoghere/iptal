import 'package:flutter/material.dart';

class NameScreen extends StatefulWidget {
  const NameScreen({Key? key}) : super(key: key);

  @override
  State<NameScreen> createState() => _NameScreenState();
}

class _NameScreenState extends State<NameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 300,
            ),
            const Text(
              "Your Name?",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 50,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Your Name",
                border: InputBorder.none,
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20),
                primary: Colors.blue[900],
              ),
              child: const Text(
                "Continue",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
