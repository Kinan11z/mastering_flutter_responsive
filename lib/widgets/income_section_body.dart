import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive/core/utils/size_config.dart';
import 'package:mastering_flutter_responsive/widgets/detailed_income_chart.dart';
import 'package:mastering_flutter_responsive/widgets/income_chart.dart';
import 'package:mastering_flutter_responsive/widgets/income_details_list_view.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MediaQuery.sizeOf(context).width > SizeConfig.desktop
        ? const Flexible(
            child: Padding(
              padding: EdgeInsets.all(12),
              child: DetailedIncomeChart(),
            ),
          )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetailsListView())
            ],
          );
  }
}
