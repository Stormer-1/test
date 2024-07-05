import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/assets/text_styles.dart';
import 'package:test/features/ui/pages/emotions_page/cubit/emotions_page_cubit.dart';
import 'package:test/features/ui/pages/emotions_page/emotions_page.dart';

class Feelings extends StatelessWidget {
  const Feelings({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: dynamicChips
            .map(
              (e) => FeelingsContainer(
                feeling: e,
              ),
            )
            .toList(),
      ),
    );
  }
}

class FeelingsContainer extends StatelessWidget {
  const FeelingsContainer({
    super.key,
    required this.feeling,
  });
  final String feeling;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<EmotionsPageCubit, EmotionsPageState, bool>(
      selector: (state) {
        return state.selectedFeelings == feeling;
      },
      builder: (context, state) {
        return CupertinoButton(
          onPressed: () {
            context.read<EmotionsPageCubit>().setFeelings(feeling);
          },
          minSize: 0,
          padding: EdgeInsets.zero,
          child: Container(
              // margin: EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 3,
              ),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10.8,
                    color: const Color(0xffB6A1C0).withOpacity(0.11),
                    offset: const Offset(2, 4),
                  )
                ],
                borderRadius: BorderRadius.circular(3),
                color: state ? const Color(0xffFF8702): const Color(0xffFFFFFF),
              ),
              child: Text(
                feeling,
                style: AppTextStyles.s11w400.apply(
                  color: state ?const Color(0xffFFFFFF): const Color(0xff4C4C69),
                ),
              )),
        );
      },
    );
  }
}
