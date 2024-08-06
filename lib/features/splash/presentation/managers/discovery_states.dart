import 'package:movie_zone/features/home/data/models/movie_model.dart';

class DiscoveryStates {}

class DiscoveryInitial extends DiscoveryStates {}
class DiscoveryLoading extends DiscoveryStates {}
class DiscoverySuccess extends DiscoveryStates {
  final MovieModel movies;
  DiscoverySuccess(this.movies);
}
class DiscoveryError extends DiscoveryStates {
  final String errorMessage;
   DiscoveryError(this.errorMessage);
}