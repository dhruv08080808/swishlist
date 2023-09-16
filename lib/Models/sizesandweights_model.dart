class SizesandWeightsModel {
  int? code;
  bool? status;
  String? message;
  Data? data;

  SizesandWeightsModel({this.code, this.status, this.message, this.data});

  SizesandWeightsModel.fromJson(Map<String, dynamic> json) {
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
  int? id;
  int? userId;
  String? waist;
  String? shirt;
  String? shoes;
  String? bed;
  String? privacyStatus;
  String? createdAt;
  User? user;

  Data(
      {this.id,
        this.userId,
        this.waist,
        this.shirt,
        this.shoes,
        this.bed,
        this.privacyStatus,
        this.createdAt,
        this.user});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    waist = json['waist'];
    shirt = json['shirt'];
    shoes = json['shoes'];
    bed = json['bed'];
    privacyStatus = json['privacy_status'];
    createdAt = json['created_at'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['waist'] = this.waist;
    data['shirt'] = this.shirt;
    data['shoes'] = this.shoes;
    data['bed'] = this.bed;
    data['privacy_status'] = this.privacyStatus;
    data['created_at'] = this.createdAt;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? name;
  String? username;
  String? phone;
  String? email;
  String? photo;
  String? type;

  User(
      {this.id,
        this.name,
        this.username,
        this.phone,
        this.email,
        this.photo,
        this.type});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    phone = json['phone'];
    email = json['email'];
    photo = json['photo'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['username'] = this.username;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['photo'] = this.photo;
    data['type'] = this.type;
    return data;
  }
}
