import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive/core/constant/app_styles.dart';
import 'package:mastering_flutter_responsive/widgets/my_card_dot_indicator.dart';
import 'package:mastering_flutter_responsive/widgets/my_card_page_view.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int currentPageView = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () {
        currentPageView = pageController.page!.round();
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(height: 24),
        MyCardPageView(
          pageController: pageController,
        ),
        const SizedBox(height: 24),
        MyCardDotIndicator(currentPageView: currentPageView)
      ],
    );
  }
}
