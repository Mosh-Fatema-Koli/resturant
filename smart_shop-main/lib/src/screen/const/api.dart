import 'package:http/http.dart' as http;

class ApiService {
  static const baseUrl = 'https://api.chatchefs.com/api/food/v1/menu/';

  Future<http.Response> getMenuData({required String locations}) async {
    final url = Uri.parse('$baseUrl?locations=$locations');
    final response = await http.get(url);
    return response;
  }
}