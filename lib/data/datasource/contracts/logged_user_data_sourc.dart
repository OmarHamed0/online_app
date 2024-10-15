
import '../../../core/networking/result.dart';
import '../../api/model/LoggedUserDto.dart';

abstract class LoggedUserDataSource{
  Future<Result<LoggedUserDto?>>loggedUser();
}