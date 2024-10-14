import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_exam_app/core/styles/colors/app_colors.dart';

class TextFormFieldItem extends StatelessWidget {
  String hintText;
  String labelText;
  TextInputType keyBordType;
  TextEditingController controller;
  String? Function(String?)? validator;
  Widget? suffixIcon;
  Widget? prefixIcon;
  void Function(String)? onChanged;
  int? maxLine;
  bool isObscureText;

  TextFormFieldItem({
    required this.hintText,
    required this.labelText,
    this.keyBordType = TextInputType.none,
    required this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.onChanged,
    this.isObscureText = false,
    this.maxLine,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: keyBordType,
      obscureText: isObscureText,
      maxLines: maxLine,
      onChanged: onChanged,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.grey),
          floatingLabelStyle:
              MaterialStateTextStyle.resolveWith((Set<MaterialState> states) {
            if (states.contains(MaterialState.error)) {
              return TextStyle(color: AppColors.kRed);
            } else if (states.contains(MaterialState.focused)) {
              return TextStyle(color: AppColors.kBlack);
            }
            return TextStyle(color: Colors.grey);
          }),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.kGray,
          ),
          suffixIcon: suffixIcon,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.kBlack, width: 1.0),
            borderRadius: BorderRadius.circular(3.r),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.kBlack, width: 1.0),
              borderRadius: BorderRadius.circular(3.r)),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.kRed,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.kRed,
            ),
          ),
          errorStyle: TextStyle(
            color: AppColors.kRed,
            fontSize: 13.sp,
          )),
    );
  }
}
