
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_shop/src/screen/const/controller/menu_controller.dart';
import 'package:smart_shop/src/screen/view/cart/cart.dart';
import 'package:smart_shop/src/screen/view/cart/controller/cart_controller.dart';
import 'package:smart_shop/src/screen/view/product/product_details.dart';
import 'package:smart_shop/src/screen/widgets/button.dart';
import 'package:smart_shop/src/screen/widgets/colors.dart';
import 'package:smart_shop/src/screen/widgets/k_text.dart';

class RecentProduct extends StatelessWidget {
   RecentProduct({super.key});
  final MenuPageController _controller = Get.put(MenuPageController());




  @override
  Widget build(BuildContext context) {
    return Obx(
          () {
        if (_controller.isLoading.value) {
          return SizedBox(

            child: Center(
              child: CircularProgressIndicator(
                color: BrandColors.colorButton,
              ),
            ),
          );
        } else {
          return GridView.builder(
            itemCount: _controller.menuList[0].menuitemSet.length,

            physics: AlwaysScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 10,
              childAspectRatio: 0.75,
            ),
            itemBuilder: (BuildContext context, int index) {
              final menu = _controller.menuList[0].menuitemSet[index];
              print("MenuList Length: ${_controller.menuList.length}");
              print("MenuitemSet Length: ${_controller.menuList[0].menuitemSet.length}");
            //  print("MenuitemSet pic: ${_controller.menuList[0].menuitemSet[index].originalImage!.localUrl}");


              return GestureDetector(
                onTap: () {
                  // Handle tap event, navigate to product details
                  // You might want to pass menu data to the ProductDetails screen

                },
                child: Card(
                  color: BrandColors.cardColor,
                  child: Container(
                    height: 210,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 4,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            child:

                            Image.network("https://upload.wikimedia.org/wikipedia/commons/a/a1/Momo_nepal.jpg" ,
                              fit: BoxFit.cover,

                              width: Get.width,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  KText(
                                    text: menu.name,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  SizedBox(height: 5),
                                  KText(text: menu.basePrice.toString()),
                                  SizedBox(height: 10),
                                  CartButtons.cartbuttonWidget(
                                    press: (){
                                      Get.snackbar(
                                        'Item Added',
                                        '${menu.name} added to cart',
                                        colorText: BrandColors.colorWhite,
                                        backgroundColor: BrandColors.colorButton,
                                      );


                                    },
                                    text: "Add to cart",
                                    textColor: BrandColors.colorWhite,
                                    color: BrandColors.colorButton,

                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        }
      },
    );

  }
}