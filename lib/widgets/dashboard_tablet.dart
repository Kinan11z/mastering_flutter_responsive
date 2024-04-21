import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive/widgets/custom_drawer.dart';
import 'package:mastering_flutter_responsive/widgets/dashboard_mobile.dart';

class DashboardTablet extends StatelessWidget {
  const DashboardTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        SizedBox(width: 24),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24),
                DashboardMobile(),
              ],
            ),
          ),
        ),
        SizedBox(width: 24),
      ],
    );
  }
}
