import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:panakj_app/core/model/drop_down_values/drop_down_values.dart';
import 'package:panakj_app/core/model/failure/mainfailure.dart';


final Map<String, dynamic> params = {
  'bank': 0,
  'cccupation': 0,
  'qualification': 1,
  'courses': 1,
};

class DropDownService {
  Future<DropDownValues> getDropDownValue() async {
    final uri = Uri.parse(
        'https://pt.tekpeak.in/api/dropdown_values?bank=1&courses=1&qualifications=1&occupations=1&schools=1');
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
