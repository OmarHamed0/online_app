import 'package:injectable/injectable.dart';
import 'package:online_exam_app/core/networking/result.dart';
import 'package:online_exam_app/domain/repository/auth_repository.dart';
@injectable
class VerifyResetCodeUseCase
{
  final AuthRepository authRepository;
  VerifyResetCodeUseCase({required this.authRepository});


  Future<Result<String?>>invoke({required String resetCode}){
    return authRepository.verifyResetCode(resetCode: resetCode);
  }
}