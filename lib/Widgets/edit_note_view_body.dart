import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:note_app_th/Widgets/custom_appbar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        children: [
          Gap(50),
          CustomAppBar(
            title: "Edit Note",
            icon: Icons.check,
          ),
        ],
      ),
    );
  }
}
