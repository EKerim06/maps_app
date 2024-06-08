// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'bottom_sheet_cubit.dart';

///
class BottomSheetState extends Equatable {
  ///
  BottomSheetState({this.isOtherSelected});

  bool? isOtherSelected = false;

  @override
  List<Object?> get props => [
    isOtherSelected,
  ];

  


  BottomSheetState copyWith({
    bool? isOtherSelected,
  }) {
    return BottomSheetState(
      isOtherSelected: isOtherSelected ?? this.isOtherSelected,
    );
  }
}
