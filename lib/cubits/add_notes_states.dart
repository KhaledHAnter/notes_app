part of 'add_notes_cubit.dart';

@immutable
abstract class NotesState {}

class AddNoteInitial extends NotesState {}

class AddNoteLoading extends NotesState {}

class AddNoteSuccess extends NotesState {}

class AddNoteFailure extends NotesState {
  final String errMessage;

  AddNoteFailure(this.errMessage);
}
