import 'package:flutter/material.dart';


class GenderCard extends StatelessWidget {
  const GenderCard({
    Key? key,
    required this.iconData,
    required this.text,
    required this.color,
  }) : super(key: key);
  final IconData iconData;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[200]!, spreadRadius: 10, blurRadius: 20)
              ]),
          child: Icon(
            iconData,
            size: 100,
            color: Colors.blue[900],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 15,
            color: Colors.grey[500],
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
