import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive/core/constant/app_images.dart';
import 'package:mastering_flutter_responsive/core/models/drawer_item_model.dart';
import 'package:mastering_flutter_responsive/core/models/user_info_model.dart';
import 'package:mastering_flutter_responsive/widgets/drawer_item_list_view.dart';
import 'package:mastering_flutter_responsive/widgets/inactive_drawer_item.dart';
import 'package:mastering_flutter_responsive/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                  title: 'Kinan Almahainy',
                  subtitle: 'kinan@gmail.com',
                  image: AppImages.imagesAvatar3),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          const DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      title: 'Setting system', image: AppImages.imagesSettings),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      title: 'Logout account', image: AppImages.imagesLogout),
                ),
                const SizedBox(
                  height: 48,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
