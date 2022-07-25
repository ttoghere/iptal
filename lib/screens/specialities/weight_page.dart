import 'package:flutter/material.dart';

class WeightPage extends StatefulWidget {
  const WeightPage({Key? key}) : super(key: key);

  @override
  _WeightPageState createState() => _WeightPageState();
}

class _WeightPageState extends State<WeightPage> {
  late ScrollController _scrollController;
  final int _itemCount = 100;
  int _cardPosition = 0;

  void _scrollListenerWithItemCount() {
    int itemCount = _itemCount;
    double scrollOffset = _scrollController.position.pixels;
    double viewportHeight = _scrollController.position.viewportDimension;
    double scrollRange = _scrollController.position.maxScrollExtent -
        _scrollController.position.minScrollExtent;
    int firstVisibleItemIndex =
        (scrollOffset / (scrollRange + viewportHeight) * itemCount).floor();

    if (_scrollController.position.atEdge) {
      bool isTop = _scrollController.position.pixels == 0;
      if (isTop) {
        _cardPosition = firstVisibleItemIndex;
      } else {
        _cardPosition = firstVisibleItemIndex + 1;
      }
    } else {
      _cardPosition = firstVisibleItemIndex + 1;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListenerWithItemCount);
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.removeListener(_scrollListenerWithItemCount);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "How much is your length?",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                ),
                const SizedBox(
                  height: 100,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2.5,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 100,
                      right: 20,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            controller: _scrollController,
                            itemCount: _itemCount,
                            itemBuilder: (context, index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Divider(
                                    thickness: 3,
                                    color: _cardPosition == index
                                        ? Colors.grey[200]
                                        : Colors.white,
                                  ),
                                  ListTile(
                                    title: Text(
                                      (index + 50).toString(),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                        color: _cardPosition == index
                                            ? Colors.black
                                            : Colors.grey[200],
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    thickness: 3,
                                    color: _cardPosition == index
                                        ? Colors.grey[200]
                                        : Colors.white,
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: Column(
                              children: [
                                Text(
                                  "cm",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 75,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Next",
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue[900],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
