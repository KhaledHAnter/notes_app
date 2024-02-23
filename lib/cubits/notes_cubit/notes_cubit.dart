import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app_th/constants.dart';

part 'notes_satates.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() {
    emit(NotesLoading());

    try {
      var notesBox = Hive.box<dynamic>(kNotesBox);

      List<dynamic> notes = notesBox.values.toList();

      emit(
        NotesSuccess(notes),
      );
    } catch (e) {
      emit(
        NotesFailure(e.toString()),
      );
    }
  }
}
