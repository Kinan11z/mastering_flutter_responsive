import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive/core/constant/app_styles.dart';
import 'package:mastering_flutter_responsive/core/models/all_expenses_card_model.dart';
import 'package:mastering_flutter_responsive/widgets/all_expenses_card_header.dart';

class ActiveAllExpensesCard extends StatelessWidget {
  const ActiveAllExpensesCard({super.key, required this.allExpensesCardModel});
  final AllExpensesCardModel allExpensesCardModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFF4DB7F2)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesCardHeader(
            image: allExpensesCardModel.image,
            iconColor: Colors.white,
            circleColor: Colors.white.withOpacity(0.10000000149011612),
          ),
          const SizedBox(height: 30),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesCardModel.title,
              style: AppStyles.styleMedium16(context).copyWith(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 10),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesCardModel.date,
              style: AppStyles.styleRegular14(context).copyWith(
                color: const Color(0xFFFAFAFA),
              ),
            ),
          ),
          const SizedBox(height: 20),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesCardModel.price,
              style: AppStyles.styleSemiBold24(context)
                  .copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
