import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:online_exam_app/core/base/base_view_model.dart';
import 'package:online_exam_app/core/networking/result.dart';
import 'package:online_exam_app/domain/entities/User.dart';
import 'package:online_exam_app/domain/usecase/forget_password_use_case.dart';
import 'package:online_exam_app/domain/usecase/reset_password_use_case.dart';
import 'package:online_exam_app/domain/usecase/verify_reset_code_use_case.dart';
part 'forget_password_state.dart';

@injectable
class ForgetPasswordCubit extends BaseViewModel<ForgetPasswordState> {
  ForgetPasswordUseCase forgetPasswordUseCase;
  VerifyResetCodeUseCase verifyResetCodeUseCase;
  ResetPasswordUseCase resetPasswordUseCase;
  ForgetPasswordCubit(this.forgetPasswordUseCase, this.verifyResetCodeUseCase,
      this.resetPasswordUseCase)
      : super(ForgetPasswordInitial());

  ///  controller
  final PageController pageController = PageController();
  var emailController = TextEditingController();
  var newPasswordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  /// Form

  var emailFormKey = GlobalKey<FormState>();
  var passwordFormKey = GlobalKey<FormState>();
  var confirmPasswordFormKey = GlobalKey<FormState>();

  void forgetPassword() async {
    emit(ForgetPasswordLoadingStata());
    var result =
        await forgetPasswordUseCase.invoke(email: emailController.text);
    switch (result) {
      case Success<String?>():
        emit(ForgetPasswordSuccessStata(success: result.data));
      case Fail<String?>():
        emit(ForgetPasswordErrorStata(
            errorMassage: getErrorMassageFromException(result.exception)));
    }
  }

  void verifyResetCode({required String resetCode}) async {
    emit(EmailVerifyCodeLoadingStata());
    var result = await verifyResetCodeUseCase.invoke(resetCode: resetCode);
    switch (result) {
      case Success<String?>():
        emit(EmailVerifyCodeSuccessStata(success: result.data));
      case Fail<String?>():
        emit(EmailVerifyCodeErrorStata(
            errorMassage: getErrorMassageFromException(result.exception)));
    }
  }

  void resetPassword() async {
    emit(ResetPasswordLoadingStata());
    var result = await resetPasswordUseCase.invoke(
        email: emailController.text, newPassword: newPasswordController.text);
    switch (result) {
      case Success<User?>():
        emit(ResetPasswordSuccessStata(user: result.data));
      case Fail<User?>():
        emit(ResetPasswordErrorStata(
            errorMassage: getErrorMassageFromException(result.exception)));
    }
  }

  //// Core onChanged

  bool onChangedFormField(GlobalKey<FormState> formKey) {
    if (formKey.currentState!.validate()) {
      updateButtonBackGroundColor(true);
      return true;
    } else {
      updateButtonBackGroundColor(false);
      return false;
    }
  }

  bool onValidateEmailFieldForgetPassword() {
    bool isValidate = onChangedFormField(emailFormKey);
    if (isValidate) {
      updateButtonBackGroundColor(true);
      forgetPassword();
      return true;
    } else {
      updateButtonBackGroundColor(false);
      return false;
    }
  }

  bool onValidateResetPassword() {
    bool isValidate = onChangedFormField(passwordFormKey);
    if (isValidate) {
      resetPassword();
      return true;
    } else {
      return false;
    }
  }

  void onCompletePinCode(String value) {
    if (value.isNotEmpty) {
      verifyResetCode(resetCode: value);
    }
  }

  bool isCheek = true;
  void updateButtonBackGroundColor(bool isCheeked) {
    isCheek = isCheeked;
    emit(UpdateButtonBackGroundColor());
  }
}
