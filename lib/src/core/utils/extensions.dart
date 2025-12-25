import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

extension StringExtension on String {
  bool get canBeParsedToJson {
    try {
      final _ = jsonDecode(this);

      return true;
    } catch (e) {
      return false;
    }
  }
}
