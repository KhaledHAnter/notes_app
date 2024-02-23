import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app_th/Models/note_model.dart';
import 'package:note_app_th/constants.dart';

part 'add_notes_states.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color? color = const Color(0xffF1DEDE);

  addNote(noteModel note) async {
    note.color = color!.value;

    emit(AddNoteLoading());

    try {
      var notesBox = Hive.box<noteModel>(kNotesBox);
      await notesBox.add(note);
      emit(
        AddNoteSuccess(),
      );
    } catch (e) {
      emit(
        AddNoteFailure(e.toString()),
      );
    }
  }
}
