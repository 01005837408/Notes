import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_app/feature/data/maneger/display_note/note_cubit.dart';
import 'package:hive_app/feature/presentation/widget/add_note_bottom_sheet.dart';
import 'package:hive_app/feature/presentation/widget/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<NoteCubit>(
        create: (context) => NoteCubit()..fetchAllNotes(),
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.cyan,
            onPressed: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return AddNoteBottomSheet();
                  });
            },
            child: const Icon(Icons.add),
          ),
          body: NotesViewBody(),
        ),
      ),
    );
  }
}
