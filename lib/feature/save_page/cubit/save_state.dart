part of 'save_cubit.dart';

class SaveState extends Equatable {
  const SaveState({
    this.fetchingData,
    this.isLoading,
  });

  final bool? isLoading;

  final List<SaveLocation?>? fetchingData;

  @override
  List<Object?> get props => [
        fetchingData,
        isLoading,
      ];

  SaveState copyWith({
    List<SaveLocation?>? fetchingData,
    bool? isLoading,
  }) {
    return SaveState(
      fetchingData: fetchingData ?? this.fetchingData,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
