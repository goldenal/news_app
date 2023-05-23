// To parse this JSON data, do
//
//     final topData = topDataFromJson(jsonString);

import 'dart:convert';

List<int> topDataFromJson(String str) => List<int>.from(json.decode(str).map((x) => x));

String topDataToJson(List<int> data) => json.encode(List<dynamic>.from(data.map((x) => x)));
