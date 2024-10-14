import 'package:flutter/material.dart';
import 'package:online_exam_app/core/styles/fonts/app_fonts.dart';

class RememberMeWidget extends StatelessWidget {
  const RememberMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: true,
          onChanged: (value) {
          },
        ),
        Text("Remember me", style: AppFonts.font14BlackWeight400),
      ],
    );
  }
}
