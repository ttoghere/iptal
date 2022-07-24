import 'package:flutter/material.dart';


class ImageContainer extends StatelessWidget {
  final String imageRoute;
  ImageContainer({
    Key? key,
    required this.imageRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(imageRoute))),
      ),
    );
  }
}
