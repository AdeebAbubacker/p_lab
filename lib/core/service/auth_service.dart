import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:panakj_app/core/model/auth/auth.dart';
import 'package:panakj_app/core/model/failure/mainfailure.dart';
import 'package:panakj_app/core/utility/api_endpoint.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  Future<Auth> authuser(
      {required String email, required String password}) async {
    final uri = Uri.parse(ApiEndpoint.authLogin);
    try {
      final response = await http.post(
        uri,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'email': email,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        if (response.statusCode == 200) {
          final auth = Auth.fromJson(jsonDecode(response.body));
          // ignore: avoid_print
          print('new token -----------------------------${auth.accessToken!}');
        }
        return Auth.fromJson(jsonDecode(response.body));
      } else {
        // print(MainFailure.clientFailure(message: response.body.toString()));
        throw MainFailure.clientFailure(message: response.body.toString());
      }
    } catch (e) {
      rethrow;
    }
  }

  // ignore: unused_element
  Future<void> _storeAccessToken(String accessToken) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('loginState', accessToken);
  }
}
