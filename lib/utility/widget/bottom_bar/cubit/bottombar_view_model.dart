import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bottombar_view_state.dart';

///Bottom bar logic businness
class BottombarViewModel extends Cubit<BottombarViewState> {
  ///BottomBar view Model super call cunstructor
  BottombarViewModel()
      : super(const BottombarViewState(currentBottomStateIndex: 0));

  ///Bottom bar state managment cuntructor

  void setCurrentIndex(int currentIndex) {
    emit(state.copyWith(currentBottomStateIndex: currentIndex));
  }

  

}
