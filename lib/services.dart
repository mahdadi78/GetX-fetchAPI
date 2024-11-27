import 'package:http/http.dart' as http;
import 'package:flutter_getx_exxample/model/photo_model.dart';

class RemoteServices {
  static var client = http.Client();

  static Future<List<PhotoModel>> fetchPhotos() async {
    var response = await client
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

    if (response.statusCode == 200) {
      var jsonString = response.body;
      // print(jsonString);
      var photoModelFromeJson = photoModelFromJson(jsonString);
      return photoModelFromeJson;
    } else {
      return [];
    }
  }
}
