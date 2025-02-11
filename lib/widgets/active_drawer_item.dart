import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mastering_flutter_responsive/core/constant/app_styles.dart';
import 'package:mastering_flutter_responsive/core/models/drawer_item_model.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Text(
          drawerItemModel.title,
          style: AppStyles.styleBold16(context),
        ),
      ),
      trailing: Container(width: 4, color: const Color(0xFF4EB7F2)),
    );
  }
}
