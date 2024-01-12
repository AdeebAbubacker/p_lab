import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:panakj_app/core/model/failure/mainfailure.dart';
import 'package:panakj_app/core/model/search_qualification/search_qualification.dart';



class QualificationService {
  Future<SearchQualification> getQualificationList({String? search}) async {

    
    final uri =
        Uri.parse('https://ptvue.tekpeak.in/api/qualification?search=$search');
    try {
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        SearchQualification qualification = SearchQualification.fromJson(jsonDecode(response.body));
        print(qualification.data!.toList());
        return qualification;
      } else {
        throw MainFailure.clientFailure(message: response.body.toString());
      }
    } catch (e) {
      rethrow;
    }
  }
}
