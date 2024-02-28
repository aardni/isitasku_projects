import 'dart:convert';

class LoginResponseModel {
  final String accessToken;

  LoginResponseModel({
    required this.accessToken,
  });

  factory LoginResponseModel.fromJson(String str) =>
      LoginResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LoginResponseModel.fromMap(Map<String, dynamic> json) =>
      LoginResponseModel(
        accessToken: json["access_token"],
      );

  Map<String, dynamic> toMap() => {
        "access_token": accessToken,
      };
}
