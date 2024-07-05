import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/assets/text_styles.dart';
import 'package:test/features/ui/pages/emotions_page/cubit/emotions_page_cubit.dart';

class StressRatingsSlider extends StatelessWidget {
  const StressRatingsSlider({
    super.key,
    required this.text1,
    required this.text2,
    required this.onChanged,
     this.isStressed = false,
  });

  final String text1;
  final String text2;
  final ValueChanged<double>? onChanged;
  final bool isStressed;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      height: 77,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xffFFFFFF),
        boxShadow: [
          BoxShadow(
            blurRadius: 10.8,
            color: const Color(0xffB6A1C0).withOpacity(0.11),
            offset: const Offset(2, 4),
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              6,
              (index) => Container(
                height: 8,
                width: 2,
                color: const Color(0xffE1DDD8),
              ),
            ),
          ),
          BlocSelector<EmotionsPageCubit, EmotionsPageState, double?>(
            selector: (state) {
              return isStressed ? state.stressLevel : state.selfEsteem;
            },
            builder: (context, state) {
              return SliderTheme(
                data: SliderThemeData(
                  overlayShape: SliderComponentShape.noOverlay,
                  thumbShape:
                      const RoundSliderThumbShape(enabledThumbRadius: 6),
                ),
                child: Expanded(
                  child: Slider(
                    value: state ?? 0,
                    min: 0,
                    max: 10,
                    inactiveColor: const Color(0xffE1DDD8),
                    activeColor: state != null
                        ? const Color(0xffFF8702)
                        : const Color(0xffE1DDD8),
                    thumbColor: state != null
                        ? const Color(0xffFF8702)
                        : const Color(0xffE1DDD8),
                    overlayColor:
                        const MaterialStatePropertyAll(Color(0xffFFFFFF)),
                    onChanged: 
                        onChanged,
                  ),
                ),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text1,
                style: AppTextStyles.sg11w400,
              ),
              Text(
                text2,
                style: AppTextStyles.sg11w400,
              ),
            ],
          )
        ],
      ),
    );
  }
}
