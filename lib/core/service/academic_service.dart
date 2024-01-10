import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:panakj_app/core/model/academic_data_model/academic_data_model.dart';
import 'package:panakj_app/core/utility/api_endpoint.dart';

class AcademicService {
  String authToken =
      'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiODg5MDhmODE3MDc0YWVmNDExZmNhZTE2OTFiODVlZjExYTIwZDY2MDVkOThiNmFDAOcW9NsU2ZT7xCAsKNxO1EOOYvb5u_6sPzarMxRsPpvjryCqJwEEi1OrD0zx4eSTArDtj8mFqc7BVcz8_IgU2s6Y-2hQAgsZdMKqrrbhr2qZwnlM4kg6ViJe-0wKNmakwotmzsbOrCohnnBZTrSta0EJ4nN3F9mDSya7BCOowAXZvANPyou3sRXtaD3Thl9enUkQp2R299z2xxUP2tLBDMofJC2Px_COlc1nNq1Xa5_IAd7at9BUVdJiC1jgIcfofsJa_dBzOnywufE4JctwlieW2f49fe6LTGE_w_FquSKWaNwjDEUSx04zEA_K5ZY90ObZso3pbkKl1tEGG4OFf1SG-Iy-5GGxYmchdTx8y-ht5B3xf_ZL5mhjHimtAd2nkwUHqXSffuZMGzJEih8xxgKEMR60J--94wohavmX5L_Y7CmrEJi4tdiz1YcghKd397-mpj6TiDIdZD0fDuT2ZvpEXc20aRRLrZvBhtvrZIylPNCOaPynQ5zsqoSKj67iAA6cg8PE_d199I9Fr3eCNS2UQvVfViwcaJunYDuZdrMFzSZhFZRcHc76a5vt0rIsAY_WHESI';

  Future<AcademicDataModel> academicInfo({
    final int? school,
    final int? reg_no,
    final int? sslc,
    final int? plus_one,
    final int? plus_two,
    final int? course_pref,
    final int? category,
    final String? details,
    final String? title,
    final String? description,
    final String? attachment,
  }) async {
    final uri = Uri.parse(ApiEndpoint.academicinfo);
    try {
      final response = await http.post(
        uri,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $authToken',
        },
        body: jsonEncode({
          "academic": {
            "school": 7,
            "reg_no": 38754,
            "sslc": sslc,
            "plus_one": plus_one,
            "plus_two": plus_two,
            "course_pref": 9
          },
          "achievements": [
            {
              "category": 2,
              "details": "Shyam",
              "title": "ggbyuhj",
              "description": "nbhhniukhihiuhh",
              "attachment":
                  "/9j//2wCEAAoHCBUVFRgWFRYZGRgaHBwcGhocGhwhHBwcHhwaGhgaGhweJC"
            }
          ]
        }),
      );

      if (response.statusCode == 200) {
        // ignore: avoid_print
        print('from service success - from academics');
        print(
            'from service success - ${AcademicDataModel.fromJson(jsonDecode(response.body.toString()))}');
        return AcademicDataModel.fromJson(jsonDecode(response.body));
      } else {
        // ignore: avoid_print
        print('from service failure - from academics');
        throw Exception(jsonDecode(response.body));
      }
    } catch (e) {
      rethrow;
    }
  }
}
