import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_notes_states.dart';

class NotesCubit extends   Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
}