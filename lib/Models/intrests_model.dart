class GetIntrestModel {
  int? code;
  bool? status;
  String? message;
  Data? data;

  GetIntrestModel({this.code, this.status, this.message, this.data});

  GetIntrestModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? userId;
  String? interest;
  String? createdAt;
  int? id;

  Data({this.userId, this.interest, this.createdAt, this.id});

  Data.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    interest = json['interest'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['interest'] = this.interest;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    return data;
  }
}
