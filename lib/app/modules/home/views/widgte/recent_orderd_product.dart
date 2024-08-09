// ignore_for_file: prefer_const_constructors

import 'package:assignment_app/app/modules/add_cart/controllers/add_cart_controller.dart';
import 'package:assignment_app/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../productDetails/views/product_details_view.dart';
import 'recend_ordered_product_entity.dart';

Widget buildHorizontalProductsList(HomeController controller) {
  final AddCartController addCartController = Get.find<AddCartController>();

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Recently Ordered',
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      SizedBox(height: 8.h),
      SizedBox(
        height: 220.h, // Adjust height based on the card design
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.productList.length,
          itemBuilder: (context, index) {
            final product = controller.productList[index];
            return Card(
              elevation: 3,
              margin: EdgeInsets.only(right: 16.w, bottom: 8.h, top: 8.h),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.r)),
                width: 120.w,
                padding: EdgeInsets.all(8.w),
                child: InkWell(
                    onTap: () {
                      Get.to(() => ProductDetailPage(product: product));
                    },
                    child: productEntities(product, addCartController)),
              ),
            );
          },
        ),
      ),
    ],
  );
}
