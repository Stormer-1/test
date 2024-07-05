import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/assets/text_styles.dart';
import 'package:test/features/ui/pages/emotions_page/cubit/emotions_page_cubit.dart';

class SaveButton extends StatefulWidget {
  const SaveButton({super.key});

  @override
  State<SaveButton> createState() => _SaveButtonState();
}

class _SaveButtonState extends State<SaveButton> {
  void _saveSuccess() {
    showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        content: const Text("This has been saved!"),
        title: const Text("Saved!"),
        actions: [
          MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.check))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocSelector<EmotionsPageCubit, EmotionsPageState, bool>(
      selector: (state) {
        return state.canSave;
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: state? _saveSuccess : null,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              padding: const EdgeInsets.all(7),
              height: 44,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(69),
                color: state ? const Color(0xffFF8702) : const Color(0xffF2F2F2),
              ),
              child: const Text(
                "Сохранить",
                style: AppTextStyles.s20w400,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        );
      },
    );
  }
}
