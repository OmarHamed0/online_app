import 'package:online_exam_app/core/networking/result.dart';
import 'package:online_exam_app/data/api/model/GetAllSubjectsDto.dart';
import 'package:online_exam_app/domain/entities/GetAllSubjects.dart';

abstract class GetAllSubjectsRepository{
  Future<Result<GetAllSubjectsDto?>>getAllSubjects();
}