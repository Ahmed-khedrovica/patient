import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/networking/api_result.dart';
import '../data/models/profile_response.dart';
import '../data/repos/profile_repo.dart';
import 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState<ProfileResponse>> {
  final ProfileRepo _profileRepo;

  ProfileCubit(this._profileRepo)
    : super(const ProfileState<ProfileResponse>.initial());

  Future<void> getProfile() async {
    emit(const ProfileState<ProfileResponse>.loading());

    final response = await _profileRepo.getProfile();
    response.when(
      success: _emitSuccess,
      failure: (error) {
        emit(
          ProfileState<ProfileResponse>.error(
            errorMessage: error.apiErrorModel.message ?? '',
          ),
        );
      },
    );
  }

  void _emitSuccess(ProfileResponse profileResponse) {
    emit(ProfileState<ProfileResponse>.success(profileResponse));
  }

  Future<void> logout() async {
    await _profileRepo.logout();
    emit(const ProfileState<ProfileResponse>.initial());
  }
}
