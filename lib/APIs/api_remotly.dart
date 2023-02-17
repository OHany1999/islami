import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:islami/home/Models/RadioModel.dart';

class ApiManager {
  static Future<RadioModel> getRadio() async {
    Response response = await http.get(
      Uri.parse('https://mp3quran.net/api/v3/radios?language=ar'),
    );
    if (response.statusCode == 200) {
      return RadioModel.fromJson(jsonDecode(response.body),);
    } else {
      throw Exception('Failed to load');
    }
  }
}
