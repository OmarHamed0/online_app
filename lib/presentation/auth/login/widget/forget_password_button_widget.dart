import 'package:flutter/material.dart';
import 'package:online_exam_app/config/routes/page_route_name.dart';
import 'package:online_exam_app/core/styles/fonts/app_fonts.dart';

class ForgetPasswordButtonWidget extends StatelessWidget {
  const ForgetPasswordButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            PageRouteName.forgetPassword,
          );
        },
        child: Text("ForgetPassword",
            textAlign: TextAlign.left, style: AppFonts.font13BlackWeight400));
  }
}
