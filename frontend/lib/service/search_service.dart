import 'package:http/http.dart' as http;

class SearchService {
  static Future<String> searchPostDjangoAPI(String query) async {
    String url = 'http://192.168.1.149:8000/api/searchview?search=$query';

    http.Response response = await http.get(Uri.parse(url));

    return response.body;
  }
}
