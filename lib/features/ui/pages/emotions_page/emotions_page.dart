import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/assets/app_sizes.dart';
import 'package:test/assets/text_styles.dart';
import 'package:test/features/ui/pages/emotions_page/widgets/ratings_title.dart';
import 'package:test/features/ui/pages/emotions_page/cubit/emotions_page_cubit.dart';
import 'package:test/features/ui/pages/emotions_page/widgets/feelings.dart';
import 'package:test/features/ui/pages/emotions_page/widgets/feelings_view.dart';
import 'package:test/features/ui/pages/emotions_page/widgets/notes.dart';
import 'package:test/features/ui/pages/emotions_page/widgets/ratings_slider.dart';
import 'package:test/features/common_widgets/save_button.dart';

class EmotionsPage extends StatefulWidget {
  const EmotionsPage({super.key});

  @override
  State<EmotionsPage> createState() => _EmotionsPageState();
}

class _EmotionsPageState extends State<EmotionsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocSelector<EmotionsPageCubit, EmotionsPageState, bool>(
      selector: (state) {
        return state.selectedEmotions != null;
      },
      builder: (context, state) {
        return ListView(
          children: [
            gapH30,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Что чувствуешь?",
                style: AppTextStyles.s16w800,
              ),
            ),
            gapH20,
            const SizedBox(
              height: 118,
              child: FeelingsView(),
            ),
            gapH20,
            if (state) const Feelings(),
            gapH36,
            const RatingsTitle(text: "Уровень стресса"),
            gapH20,
            StressRatingsSlider(
              onChanged: context.read<EmotionsPageCubit>().setStressLevel,
              text1: "Низкий",
              text2: "Высокий",
              isStressed: true,
            ),
            gapH36,
            const RatingsTitle(text: "Самооценка"),
            gapH20,
            StressRatingsSlider(
              onChanged: context.read<EmotionsPageCubit>().setSelfEsteem,
              text1: "Неуверенность",
              text2: "Уверенность",
            ),
            gapH36,
            const RatingsTitle(text: "Заметки"),
            gapH20,
            const Notes(),
            gapH16,
            const SaveButton(),
          ],
        );
      },
    );
  }
}

final List<String> dynamicChips = [
  "Возбуждение",
  "Восторг",
  "Игривость",
  "Наслаждение",
  "Очарование",
  "Осознанность",
  "Смелость",
  "Удовольствие",
  "Чувственность",
  "Энергичность",
  "Экстравагантность",
];
