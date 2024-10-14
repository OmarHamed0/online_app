/// message : "success"
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY3MDUzZDAwZTc3ZDY4NTk1YTI5MWZlZiIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNzI4Mzk2NTQ0fQ.MO3-GSPdN5PfPJIKhyG7pnZweyPFAiq6ohrN3yslJDo"

class AuthResponse {
  AuthResponse({
      this.message, 
      this.token,});

  AuthResponse.fromJson(dynamic json) {
    message = json['message'];
    token = json['token'];
  }
  String? message;
  String? token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    map['token'] = token;
    return map;
  }

}