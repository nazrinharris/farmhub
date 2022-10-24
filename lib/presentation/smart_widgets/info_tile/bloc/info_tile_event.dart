part of 'info_tile_bloc.dart';

@freezed
class InfoTileEvent with _$InfoTileEvent {
  const factory InfoTileEvent.toggleExpansion() = ToggleExpansion;

  const factory InfoTileEvent.triggerStateChange(InfoTileProps infoTileProps) = TriggerStateChange;
}
