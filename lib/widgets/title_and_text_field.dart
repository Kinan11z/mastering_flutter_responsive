import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive/core/constant/app_styles.dart';
import 'package:mastering_flutter_responsive/widgets/custom_text_field.dart';

class TitleAndTextField extends StatelessWidget {
  const TitleAndTextField(
      {super.key, required this.title, required this.hintText});
  final String title;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(hintText: hintText)
      ],
    );
  }
}
