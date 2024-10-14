import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_exam_app/core/styles/fonts/app_fonts.dart';
import 'package:online_exam_app/presentation/tabs/explore/explre_screen/widgets/explore_container.dart';

import '../../../../core/styles/colors/app_colors.dart';
import '../../../../core/styles/images/app_images.dart';

class ExploreScreen extends StatelessWidget {
  static const String routeName = "ExploreScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Survery",
            style: AppFonts.font16BlueWeight500.copyWith(
              decoration: TextDecoration.none,
              fontSize: 20.sp,
            )),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      vertical: 10.h,
                    ),
                    backgroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: AppColors.kGray),
                      borderRadius: BorderRadius.circular(18.r),
                    )),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      Text(
                        "Search",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                )),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(width: 5.w,),
                Text(
                  "Browse by subject",
                  style: AppFonts.font18BlackWeight600
                      .copyWith(fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: 4,
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 5,
                  childAspectRatio: 3.5,
                ),
                itemBuilder: (context, index) {
                  return ExploreContainer();
                }),
          )
        ],
      ),
    );
  }
}
