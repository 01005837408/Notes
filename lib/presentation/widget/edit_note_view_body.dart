import 'package:flutter/material.dart';
import 'package:hive_app/presentation/widget/custom_appBar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        children: [
          CustomAppBar(
            title: "Edit Note",
            icon:Icons.check,
          ),
        ],
      ),
    );
  }
}