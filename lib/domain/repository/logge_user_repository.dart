import '../../core/networking/result.dart';
import '../../data/api/model/LoggedUserDto.dart';
import '../entities/LoggedUser.dart';

abstract class LoggedUserRepository{
  Future<Result<LoggedUserDto?>>loggedUser();
}