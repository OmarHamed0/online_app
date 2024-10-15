import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_exam_app/core/styles/fonts/app_fonts.dart';
import 'package:online_exam_app/presentation/tabs/explore/explore_screen/widgets/specific_subject_container.dart';

import '../../../../config/routes/page_route_name.dart';

class SpecificSubjectScreen extends StatelessWidget {
  static String routeName = "specificSubjectScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Language",
          style: AppFonts.font20BlackWeight500,
        ),
        leading: InkWell(
            onTap: () {
              Navigator.pushNamed(context, PageRouteName.mainHome);
            },
            child: Icon(Icons.arrow_back_ios_rounded)),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "English",
                  style: AppFonts.font18BlackWeight600
                      .copyWith(fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          Expanded(
              child: GridView.builder(
                  itemCount: 2,
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 2.8,
                  ),
                  itemBuilder: (context, index) {
                    return SpecificSubjectContainer();
                  })),
        ],
      ),
    );
  }
}
