import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mastering_flutter_responsive/controllers/custom_drawer_item/custom_drawer_item_bloc.dart';
import 'package:mastering_flutter_responsive/core/constant/app_images.dart';
import 'package:mastering_flutter_responsive/core/models/drawer_item_model.dart';
import 'package:mastering_flutter_responsive/widgets/drawer_item.dart';

List<DrawerItemModel> items = [
  DrawerItemModel(title: 'Dashboard', image: AppImages.imagesDashboard),
  DrawerItemModel(
      title: 'My Transaction', image: AppImages.imagesMyTransctions),
  DrawerItemModel(title: 'Statistics', image: AppImages.imagesStatistics),
  DrawerItemModel(
      title: 'Wallet Account', image: AppImages.imagesWalletAccount),
  DrawerItemModel(
      title: 'My Investments', image: AppImages.imagesMyInvestments),
];

class DrawerItemListView extends StatelessWidget {
  const DrawerItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CustomDrawerItemBloc()..add(ChangePreviewEvent(newIndex: 0)),
      child: Builder(
        builder: (context) {
          return SliverList.builder(
            itemCount: items.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(top: 20),
              child: InkWell(
                onTap: () {
                  context
                      .read<CustomDrawerItemBloc>()
                      .add(ChangePreviewEvent(newIndex: index));
                },
                child: BlocBuilder<CustomDrawerItemBloc, CustomDrawerItemState>(
                  builder: (context, state) {
                    if (state is ChangePreviewState) {
                      return DrawerItem(
                        drawerItemModel: items[index],
                        isActive: state.newIndex == index,
                      );
                    } else {
                      return DrawerItem(
                        drawerItemModel: items[index],
                        isActive: false,
                      );
                    }
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
