import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:note_app_th/Widgets/custom_appbar.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 8,
      ),
      child: Column(
        children: [
          Gap(50),
          CustomAppBar(),
        ],
      ),
    );
  }
}
