import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:panakj_app/core/model/failure/mainfailure.dart';
import 'package:panakj_app/core/model/occupation_data/occupation_data.dart';
import 'package:panakj_app/core/constant/api.dart';

// lib\core/constant/api.dart

class OccupationService {
  // static const String baseApiUrl = "https://pt.tekpeak.in/api";
  // static const String getBankEndpoint = "/bank";

  Future<OccupationData> getBank({String? search}) async {
    // final uri = Uri.parse('$baseApiUrl$getBankEndpoint?&search=$search');
    final uri = Uri.parse('$baseUrl/occupation?&search=$search');
    
    try {
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        return OccupationData.fromJson(jsonDecode(response.body));
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
