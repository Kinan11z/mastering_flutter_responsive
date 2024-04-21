import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive/widgets/my_card_dot.dart';

class MyCardDotIndicator extends StatelessWidget {
  const MyCardDotIndicator({super.key, required this.currentPageView});
  final int currentPageView;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: MyCardDot(isActive: index == currentPageView),
        ),
      ),
    );
  }
}
