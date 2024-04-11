// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'splash_cubit.dart';

///Splash State
class SplashState extends Equatable {
  ///Splash State Constructor
  const SplashState({
    this.isContinue,
    this.isAnimFinished = false,
  });

  ///location permission is okey [true] or [false]
  final bool? isContinue;

  final bool isAnimFinished;

  @override
  List<Object?> get props => [
        isContinue,
        isAnimFinished,
      ];

  SplashState copyWith({
    bool? isContinue,
    bool? isAnimFinished,
  }) {
    return SplashState(
      isContinue: isContinue ?? this.isContinue,
      isAnimFinished: isAnimFinished ?? this.isAnimFinished,
    );
  }
}
