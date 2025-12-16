import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_app/presentation/widget/custom_appBar.dart';
import 'package:hive_app/presentation/widget/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        children: [
          CustomAppBar(
            title: "Edit Note",
            icon: Icons.check,
          ),
          SizedBox(
            height: 40.h,
          ),
          CustomTextField(
            hintText: 'Title',
          ),
          SizedBox(
            height: 16.h,
          ),
          CustomTextField(
            hintText: 'Description',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
