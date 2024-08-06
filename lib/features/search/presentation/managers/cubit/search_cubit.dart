import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_zone/features/home/data/models/movie_model.dart';
import 'package:movie_zone/features/search/data/repo/search_repo_impl.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepoImpl) : super(SearchInitial());

  final SearchRepoImpl searchRepoImpl;

  Future<void> search({required String query}) async {
    emit(SearchLoading());
    final result = await searchRepoImpl.searchMovies(query: query);
    result.fold((l) => emit(SearchError(l.error)), (r) {
      if(r.results!.isEmpty) {
        emit(SearchEmpty());
      }
      else{
        emit(SearchSuccess(r));
      }
    });
  }
}
