import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive/widgets/all_expenses_header.dart';
import 'package:mastering_flutter_responsive/widgets/all_expensive_card_row.dart';
import 'package:mastering_flutter_responsive/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensiveCardRow(),
        ],
      ),
    );
  }
}
