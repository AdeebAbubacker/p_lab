import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:panakj_app/core/model/failure/mainfailure.dart';
import 'package:panakj_app/core/model/search_school/search_school.dart';

class SchoolService {
  static const String baseApiUrl = "https://pt.tekpeak.in/api";
  static const String getSchoolEndpoint = "/school";

  Future<SearchSchool> getSchool({String? search}) async {
    final uri =
        Uri.parse('https://pt.tekpeak.in/api/school?page=1&search=$search');
    try {
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        return SearchSchool.fromJson(jsonDecode(response.body));
      } else {
        final failureMessage = response.body.toString();
        // ignore: avoid_print
        print(MainFailure.clientFailure(message: failureMessage));
        throw MainFailure.clientFailure(message: failureMessage);
      }
    } catch (e) {
      // ignore: avoid_print
      print("Error in BankService: $e");
      rethrow;
    }
  }
}
