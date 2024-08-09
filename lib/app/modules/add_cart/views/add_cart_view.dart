import 'package:assignment_app/app/data/utility/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/add_cart_controller.dart';

class AddCartView extends GetView<AddCartController> {
  const AddCartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Visibility(
      child: Container(
        height: 60.h,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${controller.totalItems} Items',
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Rs:${controller.totalPrices}',
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
