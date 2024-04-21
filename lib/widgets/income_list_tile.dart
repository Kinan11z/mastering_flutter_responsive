import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive/core/constant/app_styles.dart';
import 'package:mastering_flutter_responsive/core/models/income_chart_model.dart';

class IncomeListTile extends StatelessWidget {
  const IncomeListTile({super.key, required this.incomeChartData});
  final IncomeChartModel incomeChartData;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: incomeChartData.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        incomeChartData.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        '${incomeChartData.value}%',
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
