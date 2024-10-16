import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_exam_app/core/styles/colors/app_colors.dart';
import 'package:online_exam_app/core/styles/images/app_images.dart';
import 'package:online_exam_app/presentation/tabs/explore/explore_screen/widgets/question_container.dart';

class QuestionsScreen extends StatefulWidget {
  static String routeName = "questionsScreen";
  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentQuestionIndex = 1;
  int selectedOption = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Exam"),
          leading: Icon(Icons.arrow_back_ios_rounded),
          actions: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Image.asset(AppImages.alarm),
                  SizedBox(width: 5),
                  Text("30.00",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.kGreen)),
                ],
              ),
            ),
          ],
        ),
        body: Column(children: [
          Text(
            "Question ${selectedOption + 1} of 20",
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: LinearProgressIndicator(
              value: (currentQuestionIndex + 1) / 20,
              backgroundColor: AppColors.kLightGrey,
              color: AppColors.kBlue,
              minHeight: 5,
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          QuestionContainer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 14.h),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r)),
                      backgroundColor: Colors.white,
                      side: BorderSide(color: AppColors.kBlue),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Back",
                      style: TextStyle(color: AppColors.kBlue),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 14.h),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r)),
                      backgroundColor: AppColors.kBlue,
                      side: BorderSide(color: AppColors.kBlue),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Next",
                      style: TextStyle(color: AppColors.kWhite),
                    ),
                  ),
                ),
              ),
            ],
          )
        ]));
  }
}
