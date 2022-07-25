import 'package:flutter/material.dart';

class SpecialitiesScreen extends StatefulWidget {
  const SpecialitiesScreen({Key? key}) : super(key: key);

  @override
  State<SpecialitiesScreen> createState() => _SpecialitiesScreenState();
}

class _SpecialitiesScreenState extends State<SpecialitiesScreen> {
  List<Widget> _circles(int numOfSlides, int currentIndex) {
    List<Widget> circleList = [];
    for (int i = 0; i < numOfSlides; i++) {
      circleList.add(dotW(i, currentIndex));
    }
    return circleList;
  }

  Widget _getProperCircle({required int index, required int currentIndex}) {
    if (index == currentIndex) {
      return const Icon(
        Icons.circle_outlined,
      );
    } else {
      return const Icon(
        Icons.circle,
      );
    }
  }

  Widget dotW(int i, int currentIndex) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: _getProperCircle(
        index: i,
        currentIndex: currentIndex,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
