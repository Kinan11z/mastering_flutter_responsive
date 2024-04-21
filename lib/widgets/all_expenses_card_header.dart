import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesCardHeader extends StatelessWidget {
  const AllExpensesCardHeader(
      {super.key, required this.image, this.iconColor, this.circleColor});

  final String image;
  final Color? iconColor;
  final Color? circleColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: circleColor ?? const Color(0xFFFAFAFA),
                    shape: BoxShape.circle),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                        iconColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Icon(
          Icons.arrow_forward_ios,
          color: iconColor == null ? const Color(0xFF064061) : Colors.white,
        )
      ],
    );
  }
}
