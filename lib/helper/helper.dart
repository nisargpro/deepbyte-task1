import 'package:flutter/services.dart';
import 'dart:convert' as convert;

class Helper {
  static getJsonFile(String path) {
    return rootBundle.loadString(path).then(convert.jsonDecode);
  }
}
