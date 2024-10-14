import 'package:flutter/material.dart';
import 'package:online_exam_app/core/utils/Functions/validators/my_validators.dart';
import 'package:online_exam_app/presentation/auth/login/view_model/login_cubit.dart';
import 'package:online_exam_app/presentation/auth/widget/custom_text_form_field.dart';

class EmailFieldWidget extends StatelessWidget {
  final LoginCubit loginCubit;
  const EmailFieldWidget({super.key, required this.loginCubit});

  @override
  Widget build(BuildContext context) {
    return Form(
        key: loginCubit.emailFormKey,
        child: CustomTextFromField(
           inputType: TextInputType.emailAddress,
          labelText: "Email",
          hintText: "Enter Your Name",
          controller: loginCubit.email,
          validator: (value) => _validatorEmail(value),
          onChanged: (value) {
            if (loginCubit.emailFormKey.currentState!.validate()) {}
          },
        ));
  }

  String? _validatorEmail(String? value) {
    String? myValidators = MyValidators.validateEmail(value);
    bool isCheeked = myValidators != null ? false : true;
    loginCubit.updateButtonBackGroundColor(isCheeked);
    return myValidators;
  }
}
