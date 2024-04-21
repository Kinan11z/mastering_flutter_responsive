import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive/core/functions/adaptive_layout_widget.dart';
import 'package:mastering_flutter_responsive/core/utils/size_config.dart';
import 'package:mastering_flutter_responsive/widgets/custom_drawer.dart';
import 'package:mastering_flutter_responsive/widgets/dashboard_desktop.dart';
import 'package:mastering_flutter_responsive/widgets/dashboard_mobile.dart';
import 'package:mastering_flutter_responsive/widgets/dashboard_tablet.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              backgroundColor: const Color(0xFFFAFAFA),
              leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
              ),
            )
          : null,
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobile(),
        tabletLayout: (context) => const DashboardTablet(),
        desktopLayout: (context) => const DashboardDesktop(),
      ),
    );
  }
}
