
// To parse this JSON data, do
//
//     final sampleJsonData = sampleJsonDataFromJson(jsonString);

import 'dart:convert';

List<SampleJsonData> sampleJsonDataFromJson(String str) => List<SampleJsonData>.from(json.decode(str).map((x) => SampleJsonData.fromJson(x)));

String sampleJsonDataToJson(List<SampleJsonData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SampleJsonData {
  SampleJsonData({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  int userId;
  int id;
  String title;
  String body;

  factory SampleJsonData.fromJson(Map<String, dynamic> json) => SampleJsonData(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
