part of 'playground_bloc.dart';

@freezed
class PlaygroundEvent with _$PlaygroundEvent {
  const factory PlaygroundEvent.started() = _Started;
}