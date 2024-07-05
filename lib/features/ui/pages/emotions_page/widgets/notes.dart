import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/assets/text_styles.dart';
import 'package:test/features/ui/pages/emotions_page/cubit/emotions_page_cubit.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 90,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 10.8,
            color: const Color(0xffB6A1C0).withOpacity(0.11),
            offset: const Offset(2, 4),
          ),
        ],
      ),
      child: TextField(
              style: AppTextStyles.s14w400,
              textAlignVertical: TextAlignVertical.top,
              maxLines: null,
              expands: true,
              keyboardType: TextInputType.multiline,
              onChanged: context.read<EmotionsPageCubit>().setNotes,
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(13),
                  ),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(13),
                  ),
                  borderSide: BorderSide.none,
                ),
                fillColor: Color(0xffFFFFFF),
                filled: true,
                border: InputBorder.none,
                hintText: "Введите заметку",
                hintStyle: AppTextStyles.sg14w400,
                // contentPadding: EdgeInsets.all(20),
              ),
            
        
      ),
    );
  }
}
