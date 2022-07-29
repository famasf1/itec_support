import 'dart:io';

import 'package:http/http.dart' as http;

class SearchService {
  static Future<String> searchPostDjangoAPI(String query) async {
    final encoded = Uri.encodeFull(
        'http://192.168.2.253:8000/api/searchview?search=$query');

    http.Response response = await http.get(Uri.parse(encoded), headers: {
      HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8'
    });
    return response.body;
  }
}
