class UserModel {
  bool? success;
  String? message;
  List<User>? data;

  UserModel({this.success, this.message, this.data});

  UserModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <User>[];
      json['data'].forEach((v) {
        data!.add(new User.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class User {
  int? id;
  String? firstname;
  String? email;
  String? emailVerifiedAt;
  String? createdAt;
  String? updatedAt;
  String? gender;
  String? lastname;

  User(
      {this.id,
      this.firstname,
      this.email,
      this.emailVerifiedAt,
      this.createdAt,
      this.updatedAt,
      this.gender,
      this.lastname});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstname = json['firstname'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    gender = json['gender'];
    lastname = json['lastname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['firstname'] = this.firstname;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['gender'] = this.gender;
    data['lastname'] = this.lastname;
    return data;
  }
}