import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:online_exam_app/core/base/base_view_model.dart';
import 'package:online_exam_app/core/networking/result.dart';
import 'package:online_exam_app/domain/entities/User.dart';
import 'package:online_exam_app/domain/usecase/login_use_case.dart';

part 'login_state.dart';

@injectable
class LoginCubit extends BaseViewModel<LoginState> {
  LoginUseCase loginUseCase;
  LoginCubit(this.loginUseCase) : super(LoginInitial());
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  GlobalKey<FormState> emailFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> passwordFormKey = GlobalKey<FormState>();

  void login() async {
    emit(LoginLoadingStata());
    var result =
        await loginUseCase.invoke(email: email.text, password: password.text);
    switch (result) {
      case Success<User?>():
        emit(LoginSuccessStata(user: result.data));
      case Fail<User?>():
        emit(LoginErrorStata(errorMassage:getErrorMassageFromException(result.exception)));
    }
  }

  bool isCheek = true;
  void updateButtonBackGroundColor(bool isCheeked) {
    isCheek = isCheeked;
    emit(UpdateButtonBackGroundColor());
  }
}
