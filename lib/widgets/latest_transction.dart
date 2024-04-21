import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mastering_flutter_responsive/core/constant/app_images.dart';
import 'package:mastering_flutter_responsive/core/constant/app_styles.dart';
import 'package:mastering_flutter_responsive/core/models/user_info_model.dart';
import 'package:mastering_flutter_responsive/widgets/user_info_list_tile.dart';

const items = [
  UserInfoModel(
      image: AppImages.imagesAvatar1,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail'),
  UserInfoModel(
      image: AppImages.imagesAvatar2,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail'),
  UserInfoModel(
      image: AppImages.imagesAvatar3,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail'),
];

class LatestTransction extends StatelessWidget {
  const LatestTransction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transction', style: AppStyles.styleMedium16(context)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: items
                .map((e) =>
                    IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)))
                .toList(),
          ),
        )
      ],
    );
  }
}
