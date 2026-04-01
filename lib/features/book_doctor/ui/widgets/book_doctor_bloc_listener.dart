import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient/core/helpers/extensions.dart';
import 'package:patient/core/theming/app_text_styles.dart';
import 'package:patient/features/book_doctor/logic/book_doctor_cubit.dart';
import 'package:patient/features/book_doctor/logic/book_doctor_state.dart';

class BookDoctorBlocListener extends StatelessWidget {
  const BookDoctorBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<BookDoctorCubit, BookDoctorState>(
      listener: (context, state) {
        if (state is BookDoctorError) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.message)));
        }
        if (state is BookDoctorSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.response.message)),
          );
          context.pop();
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}

