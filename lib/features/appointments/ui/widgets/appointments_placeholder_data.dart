import 'package:patient/features/appointments/data/models/appointments_response.dart';

/// Placeholder [Appointment] objects used by [Skeletonizer] to
/// render bone-shaped loading placeholders that match the real
/// card layout.
List<Appointment> appointmentsPlaceholderData() {
  return List<Appointment>.generate(
    4,
    (_) => Appointment(
      id: '000000000000000000000000',
      doctorId: Doctor(
        id: '000000000000000000000000',
        userId: User(
          id: '000000000000000000000000',
          firstName: 'FirstName',
          lastName: 'LastName',
          email: 'doctor@example.com',
          phone: '+0000000000',
        ),
        specialtyId: Specialty(
          id: '000000000000000000000000',
          name: 'Specialty Name',
          schedule: [
            Schedule(day: 'Monday', startTime: '09:00', endTime: '17:00'),
          ],
          maxAppointmentsPerDay: 10,
        ),
      ),
      patientId: '000000000000000000000000',
      date: DateTime.utc(2024, 6, 15, 10, 30),
      status: 'pending',
    ),
  );
}
