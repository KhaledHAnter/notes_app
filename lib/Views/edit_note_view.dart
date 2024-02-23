import 'package:flutter/material.dart';
import 'package:note_app_th/Models/note_model.dart';
import 'package:note_app_th/Widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});

  static String id = 'Edit note';

  final noteModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(
        note: note,
      ),
    );
  }
}
