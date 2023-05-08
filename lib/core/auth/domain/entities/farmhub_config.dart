import 'package:equatable/equatable.dart';

class FarmhubConfig extends Equatable {
  final String minimumAppVersion;
  final String latestAppVersion;

  FarmhubConfig({
    required this.minimumAppVersion,
    required this.latestAppVersion,
  });

  @override
  List<Object?> get props => [minimumAppVersion, latestAppVersion];
}
