import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_exam_app/core/styles/colors/app_colors.dart';
import 'package:online_exam_app/core/styles/fonts/app_fonts.dart';
import 'package:online_exam_app/presentation/tabs/explore/explore_screen/widgets/question_container.dart';

import '../../explore/explore_screen/widgets/question_answer_container.dart';

class ResultAnswerScreen extends StatelessWidget {
  static String routeName = "resultAnswerScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Answers",
          style: AppFonts.font20BlackWeight500,
        ),
        leading: Icon(Icons.arrow_back_ios_rounded),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                height: 370.h,
                decoration: BoxDecoration(
                  boxShadow: [
                   BoxShadow(
                     color: AppColors.kWhite.withOpacity(0.7),
                     spreadRadius: 8,
                     blurRadius: 10,
                     offset: Offset(0, 6),
                   )
                  ],
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(color: AppColors.kLightWhite,width: 3.w)
        
                ),
                child: QuestionAnswerContainer(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                height: 370.h,
                decoration: BoxDecoration(
                  boxShadow: [
                   BoxShadow(
                     color: AppColors.kWhite.withOpacity(0.7),
                     spreadRadius: 8,
                     blurRadius: 10,
                     offset: Offset(0, 6),
                   )
                  ],
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(color: AppColors.kLightWhite,width: 3.w)

                ),
                child: QuestionAnswerContainer(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                height: 370.h,
                decoration: BoxDecoration(
                  boxShadow: [
                   BoxShadow(
                     color: AppColors.kWhite.withOpacity(0.7),
                     spreadRadius: 8,
                     blurRadius: 10,
                     offset: Offset(0, 6),
                   )
                  ],
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(color: AppColors.kLightWhite,width: 3.w)

                ),
                child: QuestionAnswerContainer(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                height: 370.h,
                decoration: BoxDecoration(
                  boxShadow: [
                   BoxShadow(
                     color: AppColors.kWhite.withOpacity(0.7),
                     spreadRadius: 8,
                     blurRadius: 10,
                     offset: Offset(0, 6),
                   )
                  ],
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(color: AppColors.kLightWhite,width: 3.w)

                ),
                child: QuestionAnswerContainer(),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
