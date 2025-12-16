import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_app/feature/presentation/widget/custom_button.dart';
import 'package:hive_app/feature/presentation/widget/custom_text_field.dart';
import 'package:hive_app/feature/presentation/widget/notes_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return NotesForm();
  }
}
