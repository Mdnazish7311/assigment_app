import 'package:assignment_app/app/data/utility/appcolors.dart';
import 'package:assignment_app/app/modules/add_cart/controllers/add_cart_controller.dart';
import 'package:assignment_app/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../style/produclist_style.dart';
import 'add_to_cart_component.dart';
import 'recend_order_component_addtoCart.dart';

Widget productEntities(product, AddCartController addCartController) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image.asset(
        product.image.toString(),
        width: 96.w,
        height: 96.h,
        fit: BoxFit.cover,
      ),
      SizedBox(height: 4.h),
      Text(
        product.name.toString(),
        style: productStyle(AppColors.blackColor, 12.sp, FontWeight.bold),
        maxLines: 1,
      ),
      SizedBox(height: 4.h),
      Text(
        product.weight!,
        style: productStyle(AppColors.greyColor, 10.sp, FontWeight.w500),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      SizedBox(height: 4.h),
      Text(
        product.price.toString(),
        style: TextStyle(
          fontSize: 10.sp,
          color: Colors.grey,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      Spacer(),
      addToCartComponent(product, addCartController)
    ],
  );
}
