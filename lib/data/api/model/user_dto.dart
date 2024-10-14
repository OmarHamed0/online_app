
import 'package:online_exam_app/domain/entities/User.dart';

/// _id : "67017c0be77d68595a291e30"
/// username : "elevated"
/// firstName : "Tech"
/// lastName : "Tech"
/// email : "admin@e3levate.com"
/// phone : "01094155711"
/// role : "user"
/// isVerified : false
/// createdAt : "2024-10-05T17:48:59.467Z"
/// token : ""

class UserDto {
  UserDto({
      this.id, 
      this.username, 
      this.firstName, 
      this.lastName, 
      this.email, 
      this.phone, 
      this.role, 
      this.isVerified, 
      this.createdAt, 
      this.token,});

  UserDto.fromJson(dynamic json) {
    id = json['_id'];
    username = json['username'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    phone = json['phone'];
    role = json['role'];
    isVerified = json['isVerified'];
    createdAt = json['createdAt'];
    token = json['token'];
  }
  String? id;
  String? username;
  String? firstName;
  String? lastName;
  String? email;
  String? phone;
  String? role;
  bool? isVerified;
  String? createdAt;
  String? token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['username'] = username;
    map['firstName'] = firstName;
    map['lastName'] = lastName;
    map['email'] = email;
    map['phone'] = phone;
    map['role'] = role;
    map['isVerified'] = isVerified;
    map['createdAt'] = createdAt;
    map['token'] = token;
    return map;
  }


   User toUser(){
    return User(
      token: token,
      lastName:lastName ,
      email: email,
      firstName:firstName ,
      phone: phone,
      username:username ,
      isVerified:isVerified ,
      id: id,
      createdAt:createdAt ,
      role: role,
    );
   }
}