import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:smart_shop/src/screen/const/model/menu_model.dart';
 // Import your model classes

class MenuPageController extends GetxController {
  var isLoading = true.obs;
  var menuList = <Results>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchMenuData();
  }

  void fetchMenuData() async {
    try {
      isLoading(true);
      final response = await http.get(Uri.parse(
          'https://api.chatchefs.com/api/food/v1/menu/?locations=2'));

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final menuData = ModelMenu.fromJson(jsonData);
        menuList.value = menuData.results;
      } else {
        // Handle error
      }
    } finally {
      isLoading(false);
    }
  }
}
