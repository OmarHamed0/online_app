class GetAllSubjects {
  GetAllSubjects({
      this.message, 
      this.metadata, 
      this.subjects,});

  String? message;
  Metadata? metadata;
  List<Subjects>? subjects;


}

class Subjects {
  Subjects({
      this.id, 
      this.name, 
      this.icon, 
      this.createdAt,});

  String? id;
  String? name;
  String? icon;
  String? createdAt;


}

class Metadata {
  Metadata({
      this.currentPage, 
      this.numberOfPages, 
      this.limit,});

  int? currentPage;
  int? numberOfPages;
  int? limit;

}