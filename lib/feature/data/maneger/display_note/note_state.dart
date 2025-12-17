part of 'note_cubit.dart';

@immutable
sealed class NoteState {}

final class NoteInitial extends NoteState {}
class NoteStateLoading extends NoteState {}
class NoteStateSuccess extends NoteState {
  final List<NoteModel> notes;  // store notes in state
  NoteStateSuccess(this.notes);
}
class NoteStateFailure extends NoteState {
  final String message;
  NoteStateFailure(this.message);
}
