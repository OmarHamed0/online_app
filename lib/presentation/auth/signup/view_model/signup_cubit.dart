import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:online_exam_app/core/base/base_view_model.dart';
import 'package:online_exam_app/core/networking/result.dart';
import 'package:online_exam_app/domain/entities/User.dart';
import 'package:online_exam_app/domain/usecase/signup_use_case.dart';
import 'package:online_exam_app/presentation/auth/signup/view_model/signup_states.dart';

@injectable
class SignupCubit extends BaseViewModel<SignupState> {
  SignupUseCase signupUseCase;
  SignupCubit(this.signupUseCase) : super(SignupInitial());
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var userNameController = TextEditingController();
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var phoneController = TextEditingController();
  bool isObsecure = true;
  bool isCheek = true;
  var emailFromKey = GlobalKey<FormState>();
  var passwordFromKey = GlobalKey<FormState>();

  void signup() async {
    emit(SignupLoadingStata(loadingMessage: "loadin..." ''));
    var result = await signupUseCase.invoke(
      userNameController.text,
      firstNameController.text,
      lastNameController.text,
      emailController.text,
      passwordController.text,
      confirmPasswordController.text,
      phoneController.text,
    );
    switch (result) {
      case Success<User?>():
        emit(SignupSuccessStata(user: result.data));
      case Fail<User?>():
        emit(SignupErrorStata(
            errorMassage: getErrorMassageFromException(result.exception)));
    }
  }

  void updateButtonBackGroundColor(bool isCheeked) {
    isCheek = isCheeked;
    emit(UpdateButtonBackGroundColor());
  }
}
