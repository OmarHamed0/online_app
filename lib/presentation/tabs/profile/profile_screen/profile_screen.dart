import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/styles/colors/app_colors.dart';
import '../../../auth/signup/widget/text_form_field.dart';
class ProfileScreen extends StatelessWidget {
  static const String routeName = "ProfileScreen";

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Profile"),
            elevation: 0,
            backgroundColor: AppColors.kWhite,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Stack(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'assets/images/Screenshot_2.png',
                        width: 100.w,
                        height: 90.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                        top: 70.h,
                        right: 5.w,
                        child: Container(
                            height: 18.h,
                            width: 20.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                color: AppColors.kBlue),
                            child: Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.white,
                              size: 14.sp,
                            )))
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormFieldItem(
                      controller: TextEditingController(),
                      hintText: "",
                      labelText:'User Name',
                      keyBordType: TextInputType.text),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormFieldItem(
                          controller: TextEditingController(),
                          hintText: "",
                          labelText: 'First Name',
                          keyBordType: TextInputType.text,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormFieldItem(
                          controller: TextEditingController(),
                          hintText: "",
                          labelText: 'Last Name',
                          keyBordType: TextInputType.text,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormFieldItem(
                      controller: TextEditingController(),
                      hintText: "",
                      labelText: "Email",
                      keyBordType: TextInputType.text),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormFieldItem(
                    controller: TextEditingController(),
                    hintText: "",
                    labelText: "Password",
                    keyBordType: TextInputType.text,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormFieldItem(
                    controller: TextEditingController(),
                    hintText: "",
                    labelText: "phone number",
                    keyBordType: TextInputType.text,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding:
                        EdgeInsets.symmetric(horizontal: 145.w, vertical: 15.h),
                        backgroundColor: AppColors.kGray,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.r))),
                    onPressed: () {},
                    child: Text("Update",
                      style: TextStyle(color: AppColors.kWhite),))
              ],
            ),
          ),
        );}
}

