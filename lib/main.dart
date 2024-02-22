import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app_th/Models/note_model.dart';
import 'package:note_app_th/Views/edit_note_view.dart';
import 'package:note_app_th/Views/note_view.dart';
import 'package:note_app_th/constants.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(noteModelAdapter());
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      routes: {
        NotesView.id: (context) => const NotesView(),
        EditNoteView.id: (context) => const EditNoteView(),
      },
      initialRoute: NotesView.id,
    );
  }
}
