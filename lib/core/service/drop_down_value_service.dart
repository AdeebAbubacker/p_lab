import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:panakj_app/core/model/drop_down_values/drop_down_values.dart';
import 'package:panakj_app/core/model/failure/mainfailure.dart';

final Map<String, dynamic> params = {
  'schools': 1,
  'bank': 1,
  'occupations': 1,
  'qualification': 1,
  'courses': 1,
  'collage': 1,
};

class DropDownService {
  Future<DropDownValues> getDropDownValue() async {
    final uri = Uri.parse(
        'https://ptvue.tekpeak.in/api/dropdown_values');
    try {
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        return DropDownValues.fromJson(jsonDecode(response.body));
      } else {
        throw MainFailure.clientFailure(message: response.body.toString());
      }
    } catch (e) {
      rethrow;
    }
  }
}
