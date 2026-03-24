import 'package:patient/features/profile/data/models/profile_response.dart';

String profileMemberSubtitle(UserData user) {
  final m = user.createdAt.month;
  const months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];
  final joined = '${months[m - 1]} ${user.createdAt.year}';
  final role = profileDisplayRole(user.role);
  return '$joined · $role';
}

String profileDisplayRole(String role) {
  if (role.isEmpty) return '—';
  return role[0].toUpperCase() + role.substring(1).toLowerCase();
}

String profileShortId(String id) {
  if (id.length <= 8) return id;
  return '${id.substring(0, 4)}…${id.substring(id.length - 4)}';
}
