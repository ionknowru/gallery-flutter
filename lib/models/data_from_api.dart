import 'package:http/http.dart' as http;
import 'dart:convert';

List data = [];

Future getPhotos() async {
  try {
    var response = await http.get('https://api.unsplash.com/photos?page=1&client_id=-USrL-DYEffCWVgpsCp-Hbk_BIFJW8kbxHtG2bieWWU');
    data = jsonDecode(response.body);
    print(data);
  }

  catch(e) { }

  return data;
}

//  Попытался распарсить данные, чтобы было удообнее к ним обращаться - не вышло

// class Photos {
//   final int id;
//   final String title;
//   final String username;
//   final String photoUrl;

//   Photos({
//     this.id, 
//     this.title, 
//     this.username, 
//     this.photoUrl
//   });

//   factory Photos.fromJson(Map<String, dynamic> data) {
//     return Photos(
//       id: data["id"],
//       title : data["description"],
//       username: data["username"],
//       photoUrl: data["urls"]["small"],
//     );
//   }
// }


// API
// https://api.unsplash.com/photos?page=1&client_id=-USrL-DYEffCWVgpsCp-Hbk_BIFJW8kbxHtG2bieWWU