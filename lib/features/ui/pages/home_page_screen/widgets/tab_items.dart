import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test/assets/text_styles.dart';

class TabItems extends StatelessWidget {
  const TabItems({
    super.key,
    required this.title,
    required this.image,
    required this.color,
  });

  final String title;
  final String image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // icon
          SvgPicture.asset(
            image,
            color: color,
            fit: BoxFit.cover,
            height: 12,
            width: 12,
          ),

          const SizedBox(width: 6),

          // title
          Text(
            title,
            style: AppTextStyles.s12w500,
          ),
        ],
      ),
    );
  }
}
