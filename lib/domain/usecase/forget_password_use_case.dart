
//@injectable
import 'package:online_exam_app/core/networking/result.dart';
import 'package:online_exam_app/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class ForgetPasswordUseCase{
  AuthRepository authRepository;

  ForgetPasswordUseCase(this.authRepository);

  Future<Result<String?>>invoke({required String email}){
    return authRepository.forgetPassword(email: email);
  }
}