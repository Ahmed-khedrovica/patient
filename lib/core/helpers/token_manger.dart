import 'package:patient/core/helpers/shared_pref_helper.dart';

import 'constants.dart';

/// Stores, retrieves and clears JWT tokens using secure storage.
class TokenManager {
  /// Persists both the access and refresh tokens.
  Future<void> saveTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    await SharedPrefHelper.setSecuredString(PrefKeys.accessToken, accessToken);
    await SharedPrefHelper.setSecuredString(
      PrefKeys.refreshToken,
      refreshToken,
    );
  }

  /// Returns the stored access token, or `null` if absent.
  Future<String?> getAccessToken() async {
    final token = await SharedPrefHelper.getSecuredString(PrefKeys.accessToken);
    if (token.isEmpty) return null;
    return token;
  }

  /// Returns the stored refresh token, or `null` if absent.
  Future<String?> getRefreshToken() async {
    final token = await SharedPrefHelper.getSecuredString(
      PrefKeys.refreshToken,
    );
    if (token.isEmpty) return null;
    return token;
  }

  /// Removes both tokens from secure storage (used on logout).
  Future<void> clearTokens() async {
    await SharedPrefHelper.removeSecuredString(PrefKeys.accessToken);
    await SharedPrefHelper.removeSecuredString(PrefKeys.refreshToken);
  }
}
