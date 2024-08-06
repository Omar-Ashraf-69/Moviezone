import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_zone/features/home/data/repos/home_repo_implementation.dart';
import 'package:movie_zone/features/splash/presentation/managers/discovery_states.dart';

class DiscoveryCubit extends Cubit<DiscoveryStates> {
  DiscoveryCubit(this.homeRepoImpl) : super(DiscoveryInitial());
  final HomeRepoImpl homeRepoImpl;

  Future<void> getDiscoryMovies() async {
    emit(DiscoveryLoading());
    final result = await homeRepoImpl.getDiscover();
    result.fold(
      (l) => emit(DiscoveryError(l.error)),
      (r) => emit(DiscoverySuccess(r)),
    );
  }
}
