import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_zone/features/home/data/models/movie_model.dart';
import 'package:movie_zone/features/home/data/repos/home_repo_implementation.dart';
import 'package:movie_zone/features/home/presentation/managers/home_state.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit(this.homeRepoImpl) : super(HomeInitial());
  final HomeRepoImpl homeRepoImpl;

  // MovieModel discovery = MovieModel();
  // Future<void> getDiscoryMovies() async {
  //   emit(DiscoveryLoading());
  //   final result = await homeRepoImpl.getDiscover();
  //   result.fold(
  //     (l) => emit(DiscoveryError(l.error)),
  //     (r) {
  //       discovery = r;
  //       emit(DiscoverySuccess(r));
  //     },
  //   );
  // }

  String selectedMovieItem = 'Now playing';
  Map<String, MovieModel> movies = {};
  Map<String, bool> isNotSelect = {
    "Now playing": true,
    "Upcoming": true,
    "Top rated": true,
    "Popular": true,
  };
  Future<void> getNowPlaying() async {
    emit(SatateLoading());
    final result = await homeRepoImpl.getNowPlaying();
    result.fold(
      (l) => emit(SatateError(l.error)),
      (r) {
        movies["Now playing"] = r;
        emit(NowPlayingSuccess());
      },
    );
  }

  Future<void> getPopular() async {
    emit(SatateLoading());
    final result = await homeRepoImpl.getPopular();
    result.fold(
      (l) => emit(SatateError(l.error)),
      (r) {
        movies["Popular"] = r;
        emit(PopularSuccess());
      },
    );
  }

  Future<void> getTopRated() async {
    emit(SatateLoading());
    final result = await homeRepoImpl.getTopRated();
    result.fold((l) => emit(SatateError(l.error)), (r) {
      movies["Top rated"] = r;
      emit(TopRatedSuccess());
    });
  }

  Future<void> getUpComing() async {
    emit(SatateLoading());
    final result = await homeRepoImpl.getUpComing();
    result.fold((l) => emit(SatateError(l.error)), (r) {
      movies["Upcoming"] = r;
      emit(UpComingSuccess());
    });
  }

  Future<void> alreadySelected(String item, context) async {
    if (isNotSelect[item] == true) {
      isNotSelect[item] = false;
      if (item == "Upcoming") {
        await getUpComing();
      } else if (item == "Top rated") {
        await getTopRated();
      } else if (item == "Popular") {
        await getPopular();
      }
    } else {
      emit(ChangeSelectedMovieItem());
    }
  }
}
