import 'package:online_exam_app/core/networking/result.dart';
import 'package:online_exam_app/data/api/model/GetAllSubjectsDto.dart';
import 'package:online_exam_app/data/datasource/contracts/get_all_subjects_online_data_source.dart';
import 'package:online_exam_app/domain/repository/get_all_subject_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: GetAllSubjectsRepository)
class GetAllSubjectsRepositoryImpl implements GetAllSubjectsRepository {
  GetAllSubjectsOnlineDataSource dataSource;
  GetAllSubjectsRepositoryImpl({required this.dataSource});
  @override
  Future<Result<GetAllSubjectsDto?>> getAllSubjects() {
    return dataSource.getAllSubjects();
  }
}
