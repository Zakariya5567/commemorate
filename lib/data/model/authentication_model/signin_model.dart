import 'dart:convert';

class SignInModel {
  bool? error;
  String? message;
  int? statusCode;

  SignInModel({
    this.error,
    this.message,
    this.statusCode,
  });

  factory SignInModel.fromJson(Map<String, dynamic> json) => SignInModel(
        error: json["error"],
        message: json["message"],
        statusCode: json["status_code"],
      );

  Map<String, dynamic> toJson() => {
        "error": error,
        "message": message,
        "status_code": statusCode,
      };
}
