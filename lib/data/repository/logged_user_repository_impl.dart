import 'package:injectable/injectable.dart';

import '../../../domain/repository/logge_user_repository.dart';
import '../../core/networking/result.dart';
import '../api/model/LoggedUserDto.dart';
import '../datasource/contracts/logged_user_data_sourc.dart';
@Injectable(as: LoggedUserRepository)
class LoggedUserRepositoryImpl implements LoggedUserRepository{
  LoggedUserDataSource dataSource;
  LoggedUserRepositoryImpl({required this.dataSource});

  @override
  Future<Result<LoggedUserDto?>>loggedUser() {
    return dataSource.loggedUser();
  }

}
