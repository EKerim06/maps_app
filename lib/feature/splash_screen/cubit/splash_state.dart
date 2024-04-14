// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'splash_cubit.dart';

///Splash State
class SplashState extends Equatable {
  ///Splash State Constructor
  const SplashState({
    this.location,
    this.isContinue,
    this.isAnimFinished = false,
  });

  ///location permission is okey [true] or [false]
  final bool? isContinue;

  final bool isAnimFinished;

  final Position? location;

  @override
  List<Object?> get props => [
        isContinue,
        isAnimFinished,
        location,
      ];

  SplashState copyWith({
    bool? isContinue,
    bool? isAnimFinished,
    Position? location,
  }) {
    return SplashState(
      location: location ?? this.location,
      isContinue: isContinue ?? this.isContinue,
      isAnimFinished: isAnimFinished ?? this.isAnimFinished,
    );
  }
}
