import 'package:flutter/material.dart';


class Repository {
  static Repository? _instance;


  Repository._internal();

  static init() async {
      _instance = Repository._internal();


  }

  static Repository? getInstance() {
    return _instance;
  }

}