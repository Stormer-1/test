import 'package:flutter/material.dart';
import 'package:test/assets/text_styles.dart';

class RatingsTitle extends StatelessWidget {
  const RatingsTitle({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(
        text,
        style: AppTextStyles.s16w800,
      ),
    );
  }
}
