import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/assets/text_styles.dart';
import 'package:test/features/ui/pages/emotions_page/cubit/emotions_page_cubit.dart';

class MyCircle extends StatelessWidget {
  const MyCircle({
    super.key,
    required this.image,
    required this.emotion,
  });

  final String image;
  final String emotion;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        context.read<EmotionsPageCubit>().setEmotion(emotion);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: BlocSelector<EmotionsPageCubit, EmotionsPageState, bool>(
          selector: (state) {
            return state.selectedEmotions == emotion;
          },
          builder: (context, state) {
            return Container(
              width: 83,
              decoration: BoxDecoration(
                border: state
                    ? Border.all(
                        color: const Color(0xffFF8702),
                        width: 2,
                      )
                    : null,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10.8,
                    color: const Color(0xffB6A1C0).withOpacity(0.11),
                    offset: const Offset(2, 4),
                  )
                ],
                borderRadius: BorderRadius.circular(76),
                color: const Color(0xffFFFFFF),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // image
                  Image.asset(
                    image,
                    fit: BoxFit.cover,
                    height: 50,
                    width: 53,
                  ),
                  // emotion
                  Text(
                    emotion,
                    style: AppTextStyles.s11w400.apply(
                      color: const Color(0xff4C4C69),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
