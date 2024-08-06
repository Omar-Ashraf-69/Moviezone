import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_zone/features/home/data/repos/home_repo_implementation.dart';
import 'package:movie_zone/features/home/presentation/managers/home_state.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit(this.homeRepoImpl) : super(HomeInitial());
  final HomeRepoImpl homeRepoImpl;

  Future<void> getDiscoryMovies() async {
    emit(DiscoveryLoading());
    final result = await homeRepoImpl.getDiscover();
    result.fold(
      (l) => emit(DiscoveryError(l.error)),
      (r) => emit(DiscoverySuccess(r)),
    );
  }
  Future<void> getNowPlaying() async {
    emit(NowPlayingLoading());
    final result = await homeRepoImpl.getNowPlaying();
    result.fold(
      (l) => emit(NowPlayingError(l.error)),
      (r) => emit(NowPlayingSuccess(r)),
    );
  }
  Future<void> getPopular() async {
    emit(PopularLoading());
    final result = await homeRepoImpl.getPopular();
    result.fold(
      (l) => emit(PopularError(l.error)),
      (r) => emit(PopularSuccess(r)),
    );
  }
  Future<void> getTopRated() async {
    emit(TopRatedLoading());
    final result = await homeRepoImpl.getTopRated();
    result.fold(
      (l) => emit(TopRatedError(l.error)),
      (r) => emit(TopRatedSuccess(r)),
    );
  }
  Future<void> getUpComing() async {
    emit(UpComingLoading());
    final result = await homeRepoImpl.getUpComing();
    result.fold(
      (l) => emit(UpComingError(l.error)),
      (r) => emit(UpComingSuccess(r)),
    );
  }
}
