part of 'emotions_page_cubit.dart';

@immutable
class EmotionsPageState {
  final DateTime? selectedDate;
  final String? selectedEmotions;
  final String? selectedFeelings;
  final double? stressLevel;
  final double? selfEsteem;
  final String? notes;

  const EmotionsPageState({
    this.selectedFeelings,
    this.selectedDate,
    this.selectedEmotions,
    this.stressLevel,
    this.selfEsteem,
    this.notes,
  });

  EmotionsPageState copyWith({
    final DateTime? selectedDate,
    final String? selectedEmotions,
  final String? selectedFeelings,
    final double? stressLevel,
    final double? selfEsteem,
    final String? notes,
  }) {
    return EmotionsPageState(
      notes: notes ?? this.notes,
      selectedDate: selectedDate ?? this.selectedDate,
      selectedEmotions: selectedEmotions ?? this.selectedEmotions,
      selectedFeelings: selectedFeelings ?? this.selectedFeelings,
      selfEsteem: selfEsteem ?? this.selfEsteem,
      stressLevel: stressLevel ?? this.stressLevel,
    );
  }

  bool get canSave =>
      selectedDate != null &&
      notes != null &&
      selectedEmotions != null &&
      selectedFeelings != null &&
      selfEsteem != null &&
      stressLevel != null;
}
