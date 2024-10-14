import 'package:injectable/injectable.dart';
import 'package:online_exam_app/core/networking/result.dart';
import 'package:online_exam_app/domain/entities/User.dart';
import 'package:online_exam_app/domain/repository/auth_repository.dart';

@injectable
class ResetPasswordUseCase {
  AuthRepository authRepository;

  ResetPasswordUseCase(this.authRepository);

  Future<Result<User?>> invoke(
      {required String email, required String newPassword}) {
    return authRepository.resetPassword(email: email, newPassword: newPassword);
  }
}
