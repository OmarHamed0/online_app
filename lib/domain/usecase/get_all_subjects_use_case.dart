import 'package:injectable/injectable.dart';
import 'package:online_exam_app/core/networking/result.dart';
import 'package:online_exam_app/data/api/model/GetAllSubjectsDto.dart';
import 'package:online_exam_app/domain/repository/get_all_subject_repository.dart';

import '../entities/GetAllSubjects.dart';

@injectable
class GetAllSubjectsUseCase {
  GetAllSubjectsRepository repository;
  GetAllSubjectsUseCase({required this.repository});
  Future<Result<GetAllSubjectsDto?>> invoke() {
    return repository.getAllSubjects();
  }
}
