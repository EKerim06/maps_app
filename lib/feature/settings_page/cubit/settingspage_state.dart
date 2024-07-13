// ignore_for_file: public_member_api_docs

part of 'settingspage_cubit.dart';

class SettingsPageState extends Equatable {
  const SettingsPageState({this.isSelectedEndpoint});

  final String? isSelectedEndpoint;

  @override
  List<Object?> get props => [
        isSelectedEndpoint,
      ];

  SettingsPageState copyWith({
    String? isSelectedEndpoint,
  }) {
    return SettingsPageState(
      isSelectedEndpoint: isSelectedEndpoint ?? this.isSelectedEndpoint,
    );
  }
  
}
