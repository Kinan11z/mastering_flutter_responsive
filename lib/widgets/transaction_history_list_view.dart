import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive/core/models/transaction_history_model.dart';
import 'package:mastering_flutter_responsive/widgets/transaction_histore_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static List<TransactionHistoryModel> items = [
    TransactionHistoryModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022 ',
        amount: r'$20,129',
        isWithdrawal: true),
    TransactionHistoryModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 ',
        amount: r'$20,129',
        isWithdrawal: false),
    TransactionHistoryModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 ',
        amount: r'$20,129',
        isWithdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        items.length,
        (index) => TransactionHistoryItem(
          transactionHistoryModel: items[index],
        ),
      ),
    );
  }
}
