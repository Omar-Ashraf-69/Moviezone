import 'package:movie_zone/features/home/data/models/movie_model.dart';

class HomeStates {}

class HomeInitial extends HomeStates {}


//! DISCOVERY STATE
class DiscoveryLoading extends HomeStates {}

class DiscoverySuccess extends HomeStates {
  final MovieModel movies;
  DiscoverySuccess(this.movies);
}

class DiscoveryError extends HomeStates {
  final String errorMessage;
  DiscoveryError(this.errorMessage);
}


//! NOW PLAYING STATE
class NowPlayingLoading extends HomeStates {}

class NowPlayingSuccess extends HomeStates {
  final MovieModel movies;
  NowPlayingSuccess(this.movies);
}

class NowPlayingError extends HomeStates {
  final String errorMessage;
  NowPlayingError(this.errorMessage);
}


//! Popular STATE
class PopularLoading extends HomeStates {}

class PopularSuccess extends HomeStates {
  final MovieModel movies;
  PopularSuccess(this.movies);
}

class PopularError extends HomeStates {
  final String errorMessage;
  PopularError(this.errorMessage);
}


//! Top Rated  STATE
class TopRatedLoading extends HomeStates {}

class TopRatedSuccess extends HomeStates {
  final MovieModel movies;
  TopRatedSuccess(this.movies);
}

class TopRatedError extends HomeStates {
  final String errorMessage;
  TopRatedError(this.errorMessage);
}


//! Up Coming  STATE
class UpComingLoading extends HomeStates {}

class UpComingSuccess extends HomeStates {
  final MovieModel movies;
  UpComingSuccess(this.movies);
}

class UpComingError extends HomeStates {
  final String errorMessage;
  UpComingError(this.errorMessage);
}