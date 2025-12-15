import 'package:flutter/material.dart';
import 'package:hive_app/presentation/widget/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Scaffold(body: NotesViewBody()),
    );
  }
}
