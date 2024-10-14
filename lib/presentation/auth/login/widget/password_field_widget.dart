import 'package:flutter/material.dart';
import 'package:online_exam_app/core/utils/Functions/validators/my_validators.dart';
import 'package:online_exam_app/presentation/auth/login/view_model/login_cubit.dart';
import 'package:online_exam_app/presentation/auth/widget/custom_text_form_field.dart';

class PasswordFieldWidget extends StatelessWidget {
  final LoginCubit  loginCubit;
  const PasswordFieldWidget({super.key, required this.loginCubit});

  @override
  Widget build(BuildContext context) {
    return    Form(
        key: loginCubit.passwordFormKey,
        child: CustomTextFromField(
          labelText: "Password",
          hintText: "Enter Your Password",
          inputType: TextInputType.text,
          controller: loginCubit.password,
          validator: (value)=>_validatorPassword(value),
          onChanged: (value) {
            if (loginCubit.passwordFormKey.currentState!.validate()) {}
          },
        ));
  }


  String? _validatorPassword(String? value) {
    String? myValidators = MyValidators.validatePassword(value);
    bool isCheeked = myValidators != null ? false : true;
    loginCubit.updateButtonBackGroundColor(isCheeked);
    return myValidators;
  }
}
