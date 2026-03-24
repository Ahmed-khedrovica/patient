import 'package:patient/features/profile/data/models/profile_response.dart';

/// Shapes used by [Skeletonizer]; values are arbitrary placeholders.
ProfileResponse profilePlaceholderResponse() {
  return ProfileResponse(
    success: true,
    message: 'Manage preferences, security, and how we reach you.',
    data: UserData(
      id: '000000000000000000000000',
      firstName: 'First',
      lastName: 'Last',
      email: 'you@example.com',
      role: 'patient',
      phone: '+0000000000',
      isDeleted: false,
      createdAt: DateTime.utc(2024, 1, 1),
      updatedAt: DateTime.utc(2024, 1, 1),
      version: 0,
    ),
  );
}
