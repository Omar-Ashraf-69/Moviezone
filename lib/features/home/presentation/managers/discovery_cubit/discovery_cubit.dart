

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_zone/features/home/data/repos/home_repo_implementation.dart';
import 'package:movie_zone/features/home/presentation/managers/discovery_cubit/discovery_state.dart';

class DiscoveryCubit extends Cubit<DiscoveryState> {
  DiscoveryCubit(this.homeRepoImpl) : super(DiscoveryInitial());
  final HomeRepoImpl homeRepoImpl;
  Future<void> getDiscovery() async {
    emit(DiscoveryLoading());
    final result = await homeRepoImpl.getDiscover();
    result.fold(
      (l) => emit(DiscoveryError(l.error)),
      (r) {
        emit(DiscoverySuccess(r));
      },
    );
  }
}