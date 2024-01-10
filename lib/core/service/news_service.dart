import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:panakj_app/core/model/failure/mainfailure.dart';
import 'package:panakj_app/core/model/news/news.dart';

class NewsSerivice {
  Future<News> GetNews() async {
    final uri = Uri.parse('https://ptvue.tekpeak.in/api/news');

    try {
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        return News.fromJson(jsonDecode(response.body));
      } else {
        throw MainFailure.clientFailure(message: response.body.toString());
      }
    } catch (e) {
      rethrow;
    }
  }
}
