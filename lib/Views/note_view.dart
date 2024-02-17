import 'package:flutter/material.dart';
import 'package:note_app_th/Widgets/add_note_buttom_sheet.dart';
import 'package:note_app_th/Widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  static String id = "Notes";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: AddNoteButtomSheet(),
              );
            },
          );
        },
      ),
      body: const NoteViewBody(),
    );
  }
}
