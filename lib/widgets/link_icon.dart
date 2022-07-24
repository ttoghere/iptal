import 'package:flutter/material.dart';
class LinkIcon extends StatelessWidget {
  final String imageRoute;
  final VoidCallback onTap;
  const LinkIcon({
    Key? key,
    required this.imageRoute,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            imageRoute,
            width: 40,
            height: 40,
          )),
    );
  }
}
