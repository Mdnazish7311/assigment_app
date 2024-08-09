// ignore_for_file: prefer_const_constructors

import 'package:assignment_app/app/data/utility/appcolors.dart';
import 'package:assignment_app/app/modules/add_cart/controllers/add_cart_controller.dart';
import 'package:assignment_app/app/modules/home/views/style/produclist_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'add_to_cart_component.dart';

Widget productCardList(product) {
  final AddCartController addCartController = Get.find<AddCartController>();
  return Card(
    elevation: 3,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.r),
    ),
    child: Container(
      color: AppColors.whiteColor,
      padding: EdgeInsets.all(8.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.w),
            child: Image.asset(
              product.image,
              width: 96.w,
              height: 96.h,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: productStyle(
                        AppColors.blackColor, 12.sp, FontWeight.normal),
                    maxLines: 1,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    "Weight: ${product.weight}",
                    style: productStyle(
                        AppColors.greyColor, 10.sp, FontWeight.normal),
                    maxLines: 1,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    "Price: ${product.price}",
                    style: productStyle(
                        AppColors.greyColor, 10.sp, FontWeight.normal),
                    maxLines: 1,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: addToCartComponent(
                      product,
                      addCartController,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
