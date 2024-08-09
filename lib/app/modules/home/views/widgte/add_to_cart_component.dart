import 'package:assignment_app/app/data/utility/appcolors.dart';
import 'package:assignment_app/app/modules/add_cart/controllers/add_cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Widget addToCartComponent(
  product,
  AddCartController addCartController,
) {
  return Obx(() {
    final cartProduct = addCartController.cartItems
        .firstWhereOrNull((item) => item.id == product.id);
    if (cartProduct != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: () => addCartController.removeFromCart(product),
          ),
          Text(
            '${cartProduct.quantity}',
            style: TextStyle(color: AppColors.blackColor),
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => addCartController.addToCart(product),
          ),
        ],
      );
    } else {
      return ElevatedButton(
        onPressed: () => addCartController.addToCart(product),
        child: Text(
          'Add to Cart',
          style: TextStyle(fontSize: 9.sp),
        ),
      );
    }
  });
}
