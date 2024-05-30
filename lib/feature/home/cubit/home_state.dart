// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_cubit.dart';

class HomeState extends Equatable {
  const HomeState({this.fetchingMarker, this.creatingCircles,});


  final Set<Marker>? fetchingMarker;
  final Set<Circle>? creatingCircles;

  @override
  List<Object?> get props => [
        fetchingMarker,
        creatingCircles,
      ];

  HomeState copyWith({
    Set<Marker>? fetchingMarker,
    Set<Circle>? creatingCircles,
  }) {
    return HomeState(
      fetchingMarker: fetchingMarker ?? this.fetchingMarker,
      creatingCircles: creatingCircles ?? this.creatingCircles,
    );
  }



}
