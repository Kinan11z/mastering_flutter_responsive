import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mastering_flutter_responsive/controllers/income_chart/incom_chart_bloc.dart';
import 'package:mastering_flutter_responsive/core/data/income_chart_data.dart';

class IncomeChart extends StatelessWidget {
  const IncomeChart({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IncomChartBloc(),
      child: Builder(builder: (context) {
        return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
      }),
    );
  }

  PieChartData getChartData() => PieChartData(
        sectionsSpace: 0,
        pieTouchData: PieTouchData(
          touchCallback: (p0, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          },
        ),
        sections: List.generate(
          incomeChartData.length,
          (index) => PieChartSectionData(
              value: incomeChartData[index].value,
              showTitle: false,
              radius: index == activeIndex ? 40 : 30,
              color: incomeChartData[index].color),
        ),
      );
}
