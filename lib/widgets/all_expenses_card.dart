import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive/core/models/all_expenses_card_model.dart';
import 'package:mastering_flutter_responsive/widgets/active_all_expenses_card.dart';
import 'package:mastering_flutter_responsive/widgets/inactive_all_expenses_card.dart';

class AllExpensesCard extends StatelessWidget {
  const AllExpensesCard(
      {super.key, required this.allExpensesCardModel, required this.isActive});

  final bool isActive;
  final AllExpensesCardModel allExpensesCardModel;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveAllExpensesCard(allExpensesCardModel: allExpensesCardModel)
        : InActiveAllExpensesCard(allExpensesCardModel: allExpensesCardModel);
  }
}
