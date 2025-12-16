import 'package:flutter/material.dart';
import 'package:hive_app/presentation/widget/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32.0),
      child: Column(
        children: [
          CustomTextField(),
        ],
      ),
    );
  }
}
