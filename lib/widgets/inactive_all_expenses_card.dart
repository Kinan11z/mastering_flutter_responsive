import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive/core/constant/app_styles.dart';
import 'package:mastering_flutter_responsive/core/models/all_expenses_card_model.dart';
import 'package:mastering_flutter_responsive/widgets/all_expenses_card_header.dart';

class InActiveAllExpensesCard extends StatelessWidget {
  const InActiveAllExpensesCard(
      {super.key, required this.allExpensesCardModel});
  final AllExpensesCardModel allExpensesCardModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesCardHeader(
            image: allExpensesCardModel.image,
          ),
          const SizedBox(height: 30),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(allExpensesCardModel.title,
                style: AppStyles.styleMedium16(context)),
          ),
          const SizedBox(height: 10),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(allExpensesCardModel.date,
                style: AppStyles.styleRegular14(context)),
          ),
          const SizedBox(height: 20),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(allExpensesCardModel.price,
                style: AppStyles.styleSemiBold24(context)),
          ),
        ],
      ),
    );
  }
}
