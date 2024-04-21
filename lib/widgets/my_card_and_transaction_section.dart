import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive/widgets/custom_background_container.dart';
import 'package:mastering_flutter_responsive/widgets/my_cards_section.dart';
import 'package:mastering_flutter_responsive/widgets/transaction_history_section.dart';

class MyCardAndTransactionSection extends StatelessWidget {
  const MyCardAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardsSection(),
          Divider(height: 40),
          TransactionHistorySection()
        ],
      ),
    );
  }
}
