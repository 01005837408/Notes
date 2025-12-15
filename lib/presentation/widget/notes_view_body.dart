import 'package:flutter/material.dart';
import 'package:hive_app/presentation/widget/custom_appBar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),
      ],
    );
  }
}
