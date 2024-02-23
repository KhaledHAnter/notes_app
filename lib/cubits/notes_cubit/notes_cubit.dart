import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app_th/Models/note_model.dart';
import 'package:note_app_th/constants.dart';

part 'notes_satates.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<noteModel>? notes;

  fetchAllNotes() {
    var notesBox = Hive.box<noteModel>(kNotesBox);
    notes = notesBox.values.toList();
    print(notes);
  }
}
