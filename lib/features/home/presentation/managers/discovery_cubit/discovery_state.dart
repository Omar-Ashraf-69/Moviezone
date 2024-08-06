import 'package:movie_zone/features/home/data/models/movie_model.dart';

class DiscoveryState {}

class DiscoveryInitial extends DiscoveryState {}

class DiscoveryLoading extends DiscoveryState {}

class DiscoverySuccess extends DiscoveryState {
  final MovieModel movie;

  DiscoverySuccess(this.movie);
}

class DiscoveryError extends DiscoveryState {
  final String errorMessage;

  DiscoveryError(this.errorMessage);
}
