import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mastering_flutter_responsive/core/constant/app_styles.dart';
import 'package:mastering_flutter_responsive/core/models/drawer_item_model.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
