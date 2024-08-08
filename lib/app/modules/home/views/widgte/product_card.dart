import 'package:assignment_app/app/data/utility/appcolors.dart';
import 'package:assignment_app/app/modules/home/views/style/produclist_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget recentProductCard(product) {
  return Card(
    color: AppColors.whiteColor,
    elevation: 3,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.r),
    ),
    margin: EdgeInsets.only(bottom: 16.h),
    child: Padding(
      padding: EdgeInsets.all(8.w),
      child: Row(
        children: [
          Image.asset(
            product.image,
            width: 96.w,
            height: 96.h,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: productStyle(
                      AppColors.blackColor, 12.sp, FontWeight.bold),
                  maxLines: 1,
                ),
                SizedBox(height: 4.h),
                Text(
                  product.weight,
                  style:
                      productStyle(AppColors.greyColor, 10.sp, FontWeight.bold),
                  maxLines: 1,
                ),
                SizedBox(height: 4.h),
                Text(
                  product.price,
                  style:
                      productStyle(AppColors.greyColor, 12.sp, FontWeight.bold),
                  maxLines: 1,
                ),
              ],
            ),
          ),
          SizedBox(width: 16.w),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Add to Cart'),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              textStyle: TextStyle(
                fontSize: 10.sp,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
