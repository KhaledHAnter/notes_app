import 'package:flutter/material.dart';
import 'package:note_app_th/Widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  static String id = "Notes";

  @override
  Widget build(BuildContext context) {
    return const NoteViewBody();
  }
}
