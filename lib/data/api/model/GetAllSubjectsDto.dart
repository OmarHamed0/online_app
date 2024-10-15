import '../../../domain/entities/GetAllSubjects.dart';

class GetAllSubjectsDto extends GetAllSubjects {
  GetAllSubjectsDto({
    super.message,
    super.metadata,
    super.subjects,
  });

  GetAllSubjectsDto.fromJson(dynamic json) {
    message = json['message'];
    metadata = json['metadata'] != null
        ? MetadataDto.fromJson(json['metadata'])
        : null;
    if (json['subjects'] != null) {
      subjects = [];
      json['subjects'].forEach((v) {
        subjects?.add(SubjectsDto.fromJson(v));
      });
    }
  }
}

class SubjectsDto extends Subjects {
  SubjectsDto({
    super.id,
    super.name,
    super.icon,
    super.createdAt,
  });

  SubjectsDto.fromJson(dynamic json) {
    id = json['_id'];
    name = json['name'];
    icon = json['icon'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['name'] = name;
    map['icon'] = icon;
    map['createdAt'] = createdAt;
    return map;
  }
}

class MetadataDto extends Metadata {
  MetadataDto({
    super.currentPage,
    super.numberOfPages,
    super.limit,
  });

  MetadataDto.fromJson(dynamic json) {
    currentPage = json['currentPage'];
    numberOfPages = json['numberOfPages'];
    limit = json['limit'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['currentPage'] = currentPage;
    map['numberOfPages'] = numberOfPages;
    map['limit'] = limit;
    return map;
  }
}
