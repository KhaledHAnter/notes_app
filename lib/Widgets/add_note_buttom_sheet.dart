import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:note_app_th/Widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        children: [
          Gap(24),
          CustomTextField(),
        ],
      ),
    );
  }
}
