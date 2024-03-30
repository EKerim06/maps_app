// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars
part of 'bottombar_view_model.dart';

///Bottom Bar State managment
class BottombarViewState extends Equatable {
  const BottombarViewState({required this.currentBottomStateIndex});

  ///Bottom bar selected index
  final int? currentBottomStateIndex;

  @override
  List<Object?> get props => [currentBottomStateIndex];

  BottombarViewState copyWith({
    int? currentBottomStateIndex,
  }) {
    return BottombarViewState(
      currentBottomStateIndex: currentBottomStateIndex ?? this.currentBottomStateIndex,
    );
  }
}
