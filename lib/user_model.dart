// To parse this JSON data, do
//
//     final becomeDonorModel = becomeDonorModelFromJson(jsonString);

import 'dart:convert';

BecomeDonorModel becomeDonorModelFromJson(String str) => BecomeDonorModel.fromJson(json.decode(str));

String becomeDonorModelToJson(BecomeDonorModel data) => json.encode(data.toJson());

class BecomeDonorModel {
  BecomeDonorModel({
    this.name,
    this.bloodGroup,
    this.lastDateOfBloodDonation,
    this.address,
    this.phoneNumber,
    this.city,
    this.gender,
  });
  
  String name;
  String bloodGroup;
  String lastDateOfBloodDonation;
  String address;
  String phoneNumber;
  String city;
  String gender;
  
  factory BecomeDonorModel.fromJson(Map<String, dynamic> json) => BecomeDonorModel(
    name: json["name"],
    bloodGroup: json["blood_group"],
    lastDateOfBloodDonation: json["last_date_of_blood_donation"],
    address: json["address"],
    phoneNumber: json["phone_number"],
    city: json["city"],
    gender: json["gender"],
  );
  
  Map<String, dynamic> toJson() => {
    "name": name,
    "blood_group": bloodGroup,
    "last_date_of_blood_donation": lastDateOfBloodDonation,
    "address": address,
    "phone_number": phoneNumber,
    "city": city,
    "gender": gender,
  };
}
