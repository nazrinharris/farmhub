part of 'produce_screen_bloc.dart';

@freezed
class ProduceScreenEvent with _$ProduceScreenEvent {
  const factory ProduceScreenEvent.started() = _PSEStarted;
  const factory ProduceScreenEvent.tabChanged() = _PSETabChanged;

  const factory ProduceScreenEvent.getAggregatePrices(String produceId) = _PSEGetAggregatePrices;

  const factory ProduceScreenEvent.getFirstTenPrices(String produceId) = _PSEGetFirstTenPrices;

  const factory ProduceScreenEvent.getNextTenPrices() = _PSEGetNextTenPrices;
}
