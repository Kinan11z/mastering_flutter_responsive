import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mastering_flutter_responsive/widgets/custom_background_container.dart';
import 'package:mastering_flutter_responsive/widgets/income_header.dart';
import 'package:mastering_flutter_responsive/widgets/income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeHeader(),
          IncomeSectionBody(),
        ],
      ),
    );
  }
}
