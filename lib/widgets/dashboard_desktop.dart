import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mastering_flutter_responsive/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:mastering_flutter_responsive/widgets/income_section.dart';
import 'package:mastering_flutter_responsive/widgets/my_card_and_transaction_section.dart';
import 'package:mastering_flutter_responsive/widgets/custom_drawer.dart';

class DashboardDesktop extends StatelessWidget {
  const DashboardDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        SizedBox(width: 30),
        Expanded(
          flex: 4,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          SizedBox(height: 24),
                          AllExpensesAndQuickInvoiceSection(),
                          SizedBox(height: 24),
                        ],
                      ),
                    ),
                    SizedBox(width: 30),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          SizedBox(height: 24),
                          MyCardAndTransactionSection(),
                          SizedBox(height: 24),
                          Expanded(child: IncomeSection()),
                          SizedBox(height: 24),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 24)
      ],
    );
  }
}
