import 'package:assignment_app/app/modules/add_cart/controllers/add_cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:assignment_app/app/data/utility/appcolors.dart';
import 'package:get/get.dart';

import '../../add_cart/views/add_cart_view.dart';

class ProductDetailPage extends StatelessWidget {
  final product;
  const ProductDetailPage({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    final AddCartController addCartController = Get.find<AddCartController>();
    return Scaffold(
        appBar: AppBar(
          title: Text(" "),
        ),
        body: Padding(
          padding: EdgeInsets.all(8.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(12.r), // Adjust the radius here
                  child: Image.asset(
                    product.image,
                    width: double.infinity,
                    height: 300.h,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                product.name,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 8.h),
              Text(
                "Weight:${product.weight}",
                style: TextStyle(
                  fontSize: 10.sp,
                  color: AppColors.greyColor,
                  fontWeight: FontWeight.w400,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 4.h),
              Text(
                "Price: ${product.price}",
                style: TextStyle(
                  fontSize: 10.sp,
                  color: AppColors.greyColor,
                  fontWeight: FontWeight.w400,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 4.h),
              Text(
                'Description: ${product.description}',
                style: TextStyle(
                  fontSize: 10.sp,
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.w400,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Obx(() {
                    final cartProduct = addCartController.cartItems
                        .firstWhereOrNull((item) => item.id == product.id);
                    if (cartProduct != null) {
                      return Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: () =>
                                addCartController.removeFromCart(product),
                          ),
                          Text(
                            '${cartProduct.quantity}',
                            style: TextStyle(color: AppColors.blackColor),
                          ),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () =>
                                addCartController.addToCart(product),
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
                  })
                ],
              ),
            ],
          ),
        ),
        bottomSheet: Obx(() {
          // Check if there are items in the cart
          if (addCartController.cartItems.isNotEmpty) {
            return Container(
              width: double.infinity,
              color: Colors.green,
              height: 60.h,
              child: AddCartView(),
            );
          } else {
            return SizedBox(); // Return an empty box if no items are in the cart
          }
        }));
  }
}
