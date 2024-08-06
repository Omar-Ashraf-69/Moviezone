
class HomeStates {}

class HomeInitial extends HomeStates {}

//! DISCOVERY STATE
// class DiscoveryLoading extends HomeStates {}

// class DiscoverySuccess extends HomeStates {
//   final MovieModel movies;
//   DiscoverySuccess(this.movies);
// }

// class DiscoveryError extends HomeStates {
//   final String errorMessage;
//   DiscoveryError(this.errorMessage);
// }

//! SATATE
class SatateLoading extends HomeStates {}

class SatateError extends HomeStates {
  final String errorMessage;
  SatateError(this.errorMessage);
}

//! NOW PLAYING STATE

class NowPlayingSuccess extends HomeStates {}

//! Popular STATE

class PopularSuccess extends HomeStates {}

//! Top Rated  STATE

class TopRatedSuccess extends HomeStates {}

//! Up Coming  STATE

class UpComingSuccess extends HomeStates {}



class ChangeSelectedMovieItem extends HomeStates{}