import 'package:online_exam_app/core/networking/result.dart';
import 'package:online_exam_app/domain/entities/User.dart';
import 'package:online_exam_app/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginUseCase{
  AuthRepository authRepository;
  LoginUseCase(this.authRepository);


  Future<Result<User?>>invoke({
    required String email,
    required String password,
  }){
    return authRepository.login(email: email, password: password);
  }
}