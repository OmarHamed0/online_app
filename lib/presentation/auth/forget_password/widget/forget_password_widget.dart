import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_exam_app/core/styles/fonts/app_fonts.dart';
import 'package:online_exam_app/core/utils/Functions/validators/my_validators.dart';
import 'package:online_exam_app/presentation/auth/forget_password/view_model/forget_password_cubit.dart';
import 'package:online_exam_app/presentation/auth/widget/custom_text_form_field.dart';
import 'package:online_exam_app/presentation/auth/widget/submit_button_widget.dart';

import '../../../../core/utils/Functions/dialog/dialogMethod.dart';


class ForgetPasswordWidget extends StatelessWidget {
  final ForgetPasswordCubit forgetPasswordCubit;

  const ForgetPasswordWidget({
    super.key,
    required this.forgetPasswordCubit});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgetPasswordCubit, ForgetPasswordState>(
      listener: (context, state) {
        _handelStateChange(context, state);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Forget password",
            style: AppFonts.font18BlackWeight600,
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
            "Please enter your email associated to "
                " \n                    your account",
            style: AppFonts.font14GrayWeight400,
          ),
          SizedBox(
            height: 32.h,
          ),
          _buildEmailFormFieldWidget(),
          SizedBox(
            height: 48.h,
          ),
          _buildBottomContinue(),
        ],
      ),
    );
  }


  void _handelStateChange(BuildContext context, ForgetPasswordState state) {
    if (state is ForgetPasswordSuccessStata) {
      Navigator.pop(context);
      forgetPasswordCubit.pageController
          .nextPage(duration: const Duration(
          milliseconds: 300
      ), curve: Curves.bounceInOut);
    }
    else if (state is ForgetPasswordErrorStata) {
      Navigator.pop(context);
      DialogMethod.showToast(context: context,
          massage: state.errorMassage!);
    } else if (state is ForgetPasswordLoadingStata) {
      DialogMethod.showLoadingDialog(context: context);
    }
  }


  Widget _buildEmailFormFieldWidget() {
    return Form(
      key: forgetPasswordCubit.emailFormKey,
      child: CustomTextFromField(
          inputType: TextInputType.emailAddress,
          controller: forgetPasswordCubit.emailController,
          onChanged: (value) =>
              forgetPasswordCubit.onChangedFormField(
                  forgetPasswordCubit.emailFormKey),
          validator: (value) => MyValidators.validateEmail(value),
          hintText: "Email",
          labelText: "Enter Your Email "),
    );
  }



  Widget  _buildBottomContinue(){
   return   BlocBuilder<ForgetPasswordCubit, ForgetPasswordState>(
        builder: (context, state) {
          return SubmitButtonWidget(
            text: "Continue ",
            onPressed: () => forgetPasswordCubit.onValidateEmailFieldForgetPassword(),
            cheekBackGroundColor: forgetPasswordCubit.isCheek,
          );
        },
      );

    }


}
