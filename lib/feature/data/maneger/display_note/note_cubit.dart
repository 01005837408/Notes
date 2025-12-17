import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_app/core/constant.dart';
import 'package:hive_app/feature/data/model/note_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
 
part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());
  List<NoteModel> notes = [];
  fetchAllNotes(){
    var noteBox = Hive.box<NoteModel>(kNotesBox);
   notes =  noteBox.values.toList();  // get all stored notes 
  }
}
