import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_shop/src/screen/const/controller/menu_controller.dart';

class MenuPage extends StatelessWidget {
  final MenuPageController _controller = Get.put(MenuPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Obx(
            () {
          if (_controller.isLoading.value) {
            return Center(child: CircularProgressIndicator());
          } else {
              return ListView.builder(
              itemCount: _controller.menuList.length,
              itemBuilder: (context, index) {
                final menu = _controller.menuList[index].menuitemSet[index];
                return Container(
                  height: 200,
                  width: 200,
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          title: Text(menu.name),
                          subtitle: Text(menu.basePrice.toString()),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(menu.description),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Call your "Add to Cart" method here
                           // _controller.addToCart(menu); // Adjust this based on your logic
                          },
                          child: Text('Add to Cart'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
            },
      ),
    );
  }
}