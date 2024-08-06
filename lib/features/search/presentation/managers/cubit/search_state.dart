part of 'search_cubit.dart';

class SearchState {}

final class SearchInitial extends SearchState {}
final class SearchLoading extends SearchState {}
final class SearchEmpty extends SearchState {}
final class SearchSuccess extends SearchState {
  final MovieModel movies;
  SearchSuccess(this.movies);
}
final class SearchError extends SearchState {
  final String errorMessage;
  SearchError(this.errorMessage);
}
