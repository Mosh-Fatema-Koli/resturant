// import 'package:http/http.dart' as http;
// import 'package:smart_shop/src/screen/const/model/menu_model.dart';
// import 'dart:convert';
//
// class MenuRepository {
//   Future<List<Results>> fetchMenuData() async {
//     final response = await http.get(Uri.parse(
//         'https://api.chatchefs.com/api/food/v1/menu/?locations=2'));
//
//     if (response.statusCode == 200) {
//       final jsonData = json.decode(response.body);
//       final menuData = ModelMenu.fromJson(jsonData);
//       return menuData.results;
//     } else {
//       throw Exception('Failed to load menu data');
//     }
//   }
// }
