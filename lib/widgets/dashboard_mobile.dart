import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:mastering_flutter_responsive/widgets/income_section.dart';
import 'package:mastering_flutter_responsive/widgets/my_card_and_transaction_section.dart';

class DashboardMobile extends StatelessWidget {
  const DashboardMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(height: 24),
          MyCardAndTransactionSection(),
          SizedBox(height: 24),
          IncomeSection(),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
