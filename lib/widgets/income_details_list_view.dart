import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive/core/data/income_chart_data.dart';
import 'package:mastering_flutter_responsive/widgets/income_list_tile.dart';

class IncomeDetailsListView extends StatelessWidget {
  const IncomeDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        incomeChartData.length,
        (index) => IncomeListTile(
          incomeChartData: incomeChartData[index],
        ),
      ),
    );
  }
}
