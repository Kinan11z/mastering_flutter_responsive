import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mastering_flutter_responsive/core/constant/app_images.dart';
import 'package:mastering_flutter_responsive/core/constant/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AppImages.imagesCardBackground)),
          color: const Color(0xFF4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  'Name card',
                  style: AppStyles.styleRegular16(context).copyWith(
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  'Syah Bandi',
                  style: AppStyles.styleMedium20(context),
                ),
                trailing: SvgPicture.asset(AppImages.imagesGallery),
              ),
              const Expanded(child: SizedBox()),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyles.styleSemiBold24(context).copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '12/20 - 124',
                    style: AppStyles.styleRegular16(context)
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
              const Flexible(child: SizedBox(height: 24))
            ],
          ),
        ),
      ),
    );
  }
}
