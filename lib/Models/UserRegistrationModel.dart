// To parse this JSON data, do
//
//     final userRegistrationModel = userRegistrationModelFromJson(jsonString);

import 'dart:convert';

UserRegistrationModel userRegistrationModelFromJson(String str) =>
    UserRegistrationModel.fromJson(json.decode(str));

String userRegistrationModelToJson(UserRegistrationModel data) =>
    json.encode(data.toJson());

class UserRegistrationModel {
  UserRegistrationModel({
    this.success,
    this.message,
    this.statusCode,
    this.reponseData,
  });

  String success;
  String message;
  int statusCode;
  ReponseData reponseData;

  factory UserRegistrationModel.fromJson(Map<String, dynamic> json) =>
      UserRegistrationModel(
        success: json["success"],
        message: json["message"],
        statusCode: json["statusCode"],
        reponseData: ReponseData.fromJson(json["reponseData"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "statusCode": statusCode,
        "reponseData": reponseData.toJson(),
      };
}

class ReponseData {
  ReponseData({
    this.phoneNo,
    this.pEmail,
    this.pdob,
    this.pName,
    this.pAddress,
    this.pGender,
  });

  int phoneNo;
  String pEmail;
  String pdob;
  String pName;
  String pAddress;
  String pGender;

  factory ReponseData.fromJson(Map<String, dynamic> json) => ReponseData(
        phoneNo: json["PhoneNo"],
        pEmail: json["PEmail"],
        pdob: json["PDOB"],
        pName: json["PName"],
        pAddress: json["PAddress"],
        pGender: json["PGender"],
      );

  Map<String, dynamic> toJson() => {
        "PhoneNo": phoneNo,
        "PEmail": pEmail,
        "PDOB": pdob,
        "PName": pName,
        "PAddress": pAddress,
        "PGender": pGender,
      };
}
