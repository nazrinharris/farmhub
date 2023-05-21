import 'package:equatable/equatable.dart';

class FarmhubConfig extends Equatable {
  final String? minimumAppVersion;
  final String? latestAppVersion;
  final String? localAppVersion;

  const FarmhubConfig({
    this.minimumAppVersion,
    this.latestAppVersion,
    this.localAppVersion,
  });

  @override
  List<Object?> get props => [minimumAppVersion, latestAppVersion];

  // Create a new FarmhubConfig object, replacing any properties with new values if provided.
  FarmhubConfig copyWith({
    String? minimumAppVersion,
    String? latestAppVersion,
    String? localAppVersion,
  }) {
    return FarmhubConfig(
      minimumAppVersion: minimumAppVersion ?? this.minimumAppVersion,
      latestAppVersion: latestAppVersion ?? this.latestAppVersion,
      localAppVersion: localAppVersion ?? this.localAppVersion,
    );
  }

  factory FarmhubConfig.fromJson(Map<String, dynamic> json) {
    return FarmhubConfig(
      minimumAppVersion: json['minimumAppVersion'] as String,
      latestAppVersion: json['latestAppVersion'] as String,
      localAppVersion: json['localAppVersion'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'minimumAppVersion': minimumAppVersion,
      'latestAppVersion': latestAppVersion,
      'localAppVersion': localAppVersion,
    };
  }
}
