import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:panakj_app/core/model/failure/mainfailure.dart';
import 'package:panakj_app/core/model/gallery/gallery.dart';
import 'package:panakj_app/ui/view_model/gallery/gallery_bloc.dart';



class GalleryService {
  Future<Gallery> GetgalleryImg() async {
    final uri = Uri.parse(
        'https://ptvue.tekpeak.in/api/event/gallery');
    try {
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        return Gallery.fromJson(jsonDecode(response.body));
      } else {
        throw MainFailure.clientFailure(message: response.body.toString());
      }
    } catch (e) {
      rethrow;
    }
  }
}
