import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app_th/Models/note_model.dart';
import 'package:note_app_th/constants.dart';

part 'add_notes_states.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(noteModel note) async {
    emit(AddNoteLoading());

    try {
      var notesBox = Hive.box<dynamic>(kNotesBox);
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
