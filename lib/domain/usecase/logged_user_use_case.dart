import 'package:injectable/injectable.dart';
import '../../core/networking/result.dart';
import '../../data/api/model/LoggedUserDto.dart';
import '../repository/logge_user_repository.dart';
@injectable
class LoggedUserUseCase{
  LoggedUserRepository repository;
  LoggedUserUseCase({required this.repository});
 Future<Result<LoggedUserDto?>> invoke(){
return repository.loggedUser();
  }
}