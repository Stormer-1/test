import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'emotions_page_state.dart';

class EmotionsPageCubit extends Cubit<EmotionsPageState> {
  EmotionsPageCubit() : super(const EmotionsPageState());

  void setEmotion (String emotion) => emit(state.copyWith(selectedEmotions: emotion));
  void setFeelings (String feeling) => emit(state.copyWith(selectedFeelings: feeling));
  void setStressLevel (double stress) => emit(state.copyWith(stressLevel: stress));  
  void setSelfEsteem (double esteem) => emit(state.copyWith(selfEsteem: esteem));  
  void setNotes (String note) => emit(state.copyWith(notes: note));  
  void setDate (DateTime date) => emit(state.copyWith(selectedDate: date));  

}
