
import '../../../domain/entities/LoggedUser.dart';

class LoggedUserDto extends LoggedUser {
  LoggedUserDto({
    super.message,
    super.user,
  });

  LoggedUserDto.fromJson(dynamic json) {
    message = json['message'];
    user = json['user'] != null ? UserDto.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    if (user != null) {
 //     map['user'] = user?.toJson();
    }
    return map;
  }
}

class UserDto extends User {
  UserDto({
    super.id,
    super.username,
    super.firstName,
    super.lastName,
    super.email,
    super.phone,
    super.role,
    super.isVerified,
    super.createdAt,
    super.passwordChangedAt,
    super.passwordResetCode,
    super.passwordResetExpires,
    super.resetCodeVerified,
  });

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
    passwordChangedAt = json['passwordChangedAt'];
    passwordResetCode = json['passwordResetCode'];
    passwordResetExpires = json['passwordResetExpires'];
    resetCodeVerified = json['resetCodeVerified'];
  }

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
    map['passwordChangedAt'] = passwordChangedAt;
    map['passwordResetCode'] = passwordResetCode;
    map['passwordResetExpires'] = passwordResetExpires;
    map['resetCodeVerified'] = resetCodeVerified;
    return map;
  }
}
