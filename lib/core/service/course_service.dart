import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:panakj_app/core/model/failure/mainfailure.dart';
import 'package:panakj_app/core/model/search_course/search_course.dart';



class CourseService {
  Future<SearchCourse> getCourseList({String? search}) async {
    final uri =
        Uri.parse('https://ptvue.tekpeak.in/api/course?page=1&search=$search');
    try {
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        SearchCourse courses = SearchCourse.fromJson(jsonDecode(response.body));
        print(courses.data!.toList());
        return courses;
      } else {
        throw MainFailure.clientFailure(message: response.body.toString());
      }
    } catch (e) {
      rethrow;
    }
  }
}
