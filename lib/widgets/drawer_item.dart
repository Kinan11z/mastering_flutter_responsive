import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive/core/models/drawer_item_model.dart';
import 'package:mastering_flutter_responsive/widgets/active_drawer_item.dart';
import 'package:mastering_flutter_responsive/widgets/inactive_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.isActive, required this.drawerItemModel});
  final bool isActive;
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(
            drawerItemModel: drawerItemModel,
          )
        : InActiveDrawerItem(
            drawerItemModel: drawerItemModel,
          );
  }
}
