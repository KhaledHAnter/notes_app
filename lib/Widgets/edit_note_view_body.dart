import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:note_app_th/Models/note_model.dart';
import 'package:note_app_th/Widgets/custom_appbar.dart';
import 'package:note_app_th/Widgets/custom_text_field.dart';
import 'package:note_app_th/Widgets/edit_note_colors_list.dart';
import 'package:note_app_th/cubits/notes_cubit/notes_cubit.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final noteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        children: [
          const Gap(50),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: "Edit Note",
            icon: Icons.check,
          ),
          const Gap(50),
          CustomTextField(
            onChanged: (p0) {
              title = p0;
            },
            hint: widget.note.title,
          ),
          const Gap(16),
          CustomTextField(
            onChanged: (p0) {
              content = p0;
            },
            hint: widget.note.subTitle,
            maxLines: 5,
          ),
          const Gap(16),
          EditNoteColorsList(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}
