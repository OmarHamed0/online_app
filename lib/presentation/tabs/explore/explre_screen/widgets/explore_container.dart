import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/styles/colors/app_colors.dart';
import '../../../../../core/styles/fonts/app_fonts.dart';
import '../../../../../core/styles/images/app_images.dart';

class ExploreContainer extends StatelessWidget {
  const ExploreContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
            boxShadow: [
              BoxShadow(
                color: AppColors.kBlack.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              )
            ],
      ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset(AppImages.languageTranslator),
              SizedBox(
                width: 10.w,
              ),
              Text(
                "Language",
                style: AppFonts.font16GrayWeight400
                    .copyWith(color: AppColors.kBlack),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
