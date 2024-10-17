import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/styles/colors/app_colors.dart';
import '../../../../../core/styles/fonts/app_fonts.dart';

class QuestionContainer extends StatefulWidget {
  const QuestionContainer({super.key});

  @override
  State<QuestionContainer> createState() => _QuestionContainerState();
}

class _QuestionContainerState extends State<QuestionContainer> {
  int selectedOption = -1;
  List<String> questions = [
    "Select the correctly punctuated \n sentence 1.",
    "Select the correctly punctuated \n sentence 2.",
    "Select the correctly punctuated \n sentence 3.",
    "Select the correctly punctuated \n sentence 4.",
  ];
  List<String> options = [
    "It's going to rain today.",
    "Its going to rain today.",
    "Its going to rain today.",
    "Its going to rain today."
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.h,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Select the correctly punctuated \n sentence.",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColors.kBlack,
                        fontSize: 18.sp,
                        overflow: TextOverflow.ellipsis)),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: options.length,
              itemBuilder: (context, index) {
                return option(index, options[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget option(int value, String text) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: InkWell(
        onTap: () {
          setState(() {
            selectedOption = value;
          });
        },
        child: Container(
          padding: EdgeInsets.all(7),
          decoration: BoxDecoration(
            color: selectedOption == value
                ? AppColors.kMedBlue
                : AppColors.kLightBlue,
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Row(
            children: [
              Radio<int>(
                value: value,
                groupValue: selectedOption,
                activeColor: AppColors.kBlue,
                onChanged: (int? newValue) {
                  setState(() {
                    selectedOption = newValue!;
                  });
                },
              ),
              Expanded(
                child: Text(text, style: AppFonts.font14BlackWeight400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
