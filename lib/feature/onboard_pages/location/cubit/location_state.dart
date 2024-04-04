// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'location_cubit.dart';

///Location State
class LocationState extends Equatable {
  ///LocationState constructor
  const LocationState({
    this.isLoadingFinish,
    this.isRequiredPermission,
    this.position,
  });

  final bool? isLoadingFinish;
  final bool? isRequiredPermission;
  final Position? position;

  @override
  List<Object?> get props => [
        isLoadingFinish,
        isRequiredPermission,
        position,
      ];

  LocationState copyWith({
    bool? isLoadingFinish,
    bool? isRequiredPermission,
    Position? position,
  }) {
    return LocationState(
      isLoadingFinish: isLoadingFinish ?? this.isLoadingFinish,
      isRequiredPermission: isLoadingFinish ?? this.isRequiredPermission,
      position: position ?? this.position,
    );
  }
}
