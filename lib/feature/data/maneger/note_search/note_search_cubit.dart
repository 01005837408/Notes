import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_app/core/constant.dart';
import 'package:hive_app/feature/data/maneger/note_search/note_search_state.dart';
import 'package:hive_app/feature/data/model/note_model.dart';


class NotesSearchCubit extends Cubit<NotesSearchState> {
  NotesSearchCubit() : super(NotesSearchInitial());

  final Box<NoteModel> _notesBox = Hive.box<NoteModel>(kNotesBox);

  void search(String query) {
    if (query.trim().isEmpty) {
      emit(NotesSearchEmpty());
      return;
    }

    final results = _notesBox.values.where((note) {
      return note.title.toLowerCase().contains(query.toLowerCase()) ||
          note.description.toLowerCase().contains(query.toLowerCase());
    }).toList();

    emit(NotesSearchLoaded(results));
  }

  void clear() {
    emit(NotesSearchEmpty());
  }
}
