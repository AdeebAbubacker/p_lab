import 'dart:convert';

import 'package:panakj_app/core/model/family_data/family_data.dart';

import 'package:http/http.dart' as http;
import 'package:panakj_app/core/model/sibling_data/sibling_data.dart';
import 'package:panakj_app/core/utility/api_endpoint.dart';

class FamilyInfoService {
  String authToken =
      'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiODg5MDhmODE3MDc0YWVmNDExZmNhZTE2OTFiODVlZjExYTIwZDY2MDVkOThiNmY1M2MxZDg5NGMwMTcwZDFiODY3OWQyMmJmODMzODY3N2QiLCJpYXQiOjE3MDA1NTU3MDQuMDIyNzgxLCJuYmYiOjE3MDA1NTU3MDQuMDIyNzgzLCJleHAiOjE3MzIxNzgxMDQuMDIxMDEzLCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.St8xZXUAhdCx1bOj2-Hhx9WdwdfdZl7Z7Yfcnw3qmH3KEQLr7zyRob7jcvVSvFksB_dK7Ou6TCgVJmzq_TAcGtRd5wNeTfY9sFDAOcW9NsU2ZT7xCAsKNxO1EOOYvb5u_6sPzarMxRsPpvjryCqJwEEi1OrD0zx4eSTArDtj8mFqc7BVcz8_IgU2s6Y-2hQAgsZdMKqrrbhr2qZwnlM4kg6ViJe-0wKNmakwotmzsbOrCohnnBZTrSta0EJ4nN3F9mDSya7BCOowAXZvANPyou3sRXtaD3Thl9enUkQp2R299z2xxUP2tLBDMofJC2Px_COlc1nNq1Xa5_IAd7at9BUVdJiC1jgIcfofsJa_dBzOnywufE4JctwlieW2f49fe6LTGE_w_FquSKWaNwjDEUSx04zEA_K5ZY90ObZso3pbkKl1tEGG4OFf1SG-Iy-5GGxYmchdTx8y-ht5B3xf_ZL5mhjHimtAd2nkwUHqXSffuZMGzJEih8xxgKEMR60J--94wohavmX5L_Y7CmrEJi4tdiz1YcghKd397-mpj6TiDIdZD0fDuT2ZvpEXc20aRRLrZvBhtvrZIylPNCOaPynQ5zsqoSKj67iAA6cg8PE_d199I9Fr3eCNS2UQvVfViwcaJunYDuZdrMFzSZhFZRcHc76a5vt0rIsAY_WHESI';

  Future<FamilyData> familyInfo({
    final String? fathername,
    final int? falive,
    final int? fdisabled,
    final int? focupation,
    final int? fincome,
    final String? frelation,
    final String? mothername,
    final int? malive,
    final int? mdisabled,
    final int? mocupation,
    final int? mincome,
    final String? mrelation,
    final String? guardainame,
    final int? galive,
    final int? gdisabled,
    final int? gocupation,
    final int? gincome,
    final String? grelation,
    final List<SiblingData>? siblings,
  }) async {
    final uri = Uri.parse(ApiEndpoint.familyinfo);
    try {
      final response = await http.post(
        uri,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $authToken',
        },
        body: jsonEncode({
          "guardians": [
            {
              "name": fathername,
              "alive": falive,
              "disabled": fdisabled,
              "ocupation": 99,
              "income": fincome,
              "relation": "father"
            },
            {
              "name": mothername,
              "alive": malive,
              "disabled": 1,
              "ocupation": 99,
              "income": mincome,
              "relation": "mother"
            },
            {
              "name": guardainame,
              "alive": galive,
              "disabled": gdisabled,
              "ocupation": 89,
              "income": gincome,
              "relation": "guardian"
            }
          ],
//          "siblings": siblings?.map((sibling) {
//   return {
//     "name":  sibling.name,  // Provide a default value if sibling.name is null
//     "gender": sibling.gender,
//     "qualification": sibling.qualification,
//     "course": sibling.course,
//     "occupation": sibling.occupation,
//   };
// }).toList(),
          "siblings": siblings != null
              ? siblings.map((sibling) {
                  return {
                    "name": sibling.name ?? "",
                    "gender": sibling.gender ?? "",
                    "qualification": sibling.qualification ?? 0,
                    "course": sibling.course ?? 0,
                    "occupation": sibling.occupation ?? 0,
                  };
                }).toList()
              : [],
        }),
      );

      if (response.statusCode == 200) {
        print('from service success');
        print('Response Body: ${response.body}');
        return FamilyData.fromJson(jsonDecode(response.body));
      } else {
        print('from service failure');
        print('Response Body: ${response.body}');
        throw Exception(jsonDecode(response.body));
      }
    } catch (e) {
      rethrow;
    }
  }
}
