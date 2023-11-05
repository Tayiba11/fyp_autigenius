class AllQuizModel {
  bool? success;
  String? message;
  List<Data>? data;

  AllQuizModel({this.success, this.message, this.data});

  AllQuizModel.fromJson(Map<String, dynamic> json) {
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
  String? categoryName;
  String? question;
  String? status;
  String? userId;
  String? answer;

  Data(
      {this.id,
      this.name,
      this.categoryName,
      this.question,
      this.status,
      this.userId,
      this.answer});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    categoryName = json['category_name'];
    question = json['question'];
    status = json['status'];
    userId = json['user_id'];
    answer = json['answer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['category_name'] = this.categoryName;
    data['question'] = this.question;
    data['status'] = this.status;
    data['user_id'] = this.userId;
    data['answer'] = this.answer;
    return data;
  }
}
