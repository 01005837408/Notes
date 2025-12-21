import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_app/core/constant.dart';
import 'package:hive_app/feature/data/model/note_model.dart';
import 'package:hive_app/feature/presentation/widget/note_item.dart';

class NotesSearchDelegate extends SearchDelegate {
  final Box<NoteModel> notesBox = Hive.box<NoteModel>(kNotesBox);

  @override
  String? get searchFieldLabel => 'Search notes...';

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () => query = '',
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return _buildSearchList();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return _buildSearchList();
  }

  Widget _buildSearchList() {
    final results = notesBox.values.where((note) {
      return note.title.toLowerCase().contains(query.toLowerCase()) ||
          note.description.toLowerCase().contains(query.toLowerCase());
    }).toList();

    if (results.isEmpty) {
      return const Center(child: Text('No results found'));
    }

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        final note = results[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
          child: NoteItem(note: note),
        );
      },
    );
  }
}
