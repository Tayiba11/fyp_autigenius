class AllSubCategoryModel {
  bool? success;
  String? message;
  List<Data>? data;

  AllSubCategoryModel({this.success, this.message, this.data});

  AllSubCategoryModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
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

class Data {
  int? id;
  String? name;
  String? image;
  String? audio;
  String? userId;
  String? categoryId;

  Data(
      {this.id,
      this.name,
      this.image,
      this.audio,
      this.userId,
      this.categoryId});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    audio = json['audio'];
    userId = json['user_id'];
    categoryId = json['category_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['audio'] = this.audio;
    data['user_id'] = this.userId;
    data['category_id'] = this.categoryId;
    return data;
  }
}
