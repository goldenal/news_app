// To parse this JSON data, do
//
//     final storyModel = storyModelFromJson(jsonString);

import 'dart:convert';

StoryModel storyModelFromJson(String str) => StoryModel.fromJson(json.decode(str));

String storyModelToJson(StoryModel data) => json.encode(data.toJson());

class StoryModel {
  String? by;
  int? descendants;
  int? id;
  List<int>? kids;
  int? score;
  String? text;
  int? time;
  String? title;
  String? type;
  String? url;

  StoryModel({
    this.by,
    this.descendants,
    this.id,
    this.kids,
    this.score,
    this.text,
    this.time,
    this.title,
    this.type,
    this.url
  });

  factory StoryModel.fromJson(Map<String, dynamic> json) => StoryModel(
    by: json["by"],
    descendants: json["descendants"],
    id: json["id"],
    kids: json["kids"] == null ? [] : List<int>.from(json["kids"]!.map((x) => x)),
    score: json["score"],
    text: json["text"],
    time: json["time"],
    title: json["title"],
    type: json["type"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "by": by,
    "descendants": descendants,
    "id": id,
    "kids": kids == null ? [] : List<dynamic>.from(kids!.map((x) => x)),
    "score": score,
    "text": text,
    "time": time,
    "title": title,
    "type": type,
  };
}
