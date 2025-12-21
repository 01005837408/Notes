import 'package:hive_app/feature/data/model/note_model.dart';

abstract class NotesSearchState {}

class NotesSearchInitial extends NotesSearchState {}

class NotesSearchEmpty extends NotesSearchState {}

class NotesSearchLoaded extends NotesSearchState {
  final List<NoteModel> notes;
  NotesSearchLoaded(this.notes);
}
