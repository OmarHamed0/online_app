import 'package:injectable/injectable.dart';
import 'package:online_exam_app/core/networking/result.dart';
import 'package:online_exam_app/domain/entities/User.dart';
import 'package:online_exam_app/domain/repository/auth_repository.dart';
@injectable
class SignupUseCase {
  AuthRepository authRepository;
  SignupUseCase({required this.authRepository});
  Future<Result<User?>> invoke(
      String username,
      String firstName,
      String lastName,
      String email,
      String password,
      String rePassword,
      String phone,
      ) {
    return authRepository.signup(
        phone: phone,
        rePassword: rePassword,
        password: password,
        email: email,
        lastName: lastName,
        firstName: firstName,
        username: username);
  }
}
