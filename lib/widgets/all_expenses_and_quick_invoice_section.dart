import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive/widgets/all_expenses.dart';
import 'package:mastering_flutter_responsive/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpenses(),
          SizedBox(height: 20),
          QuickInvoice(),
        ],
      ),
    );
  }
}
