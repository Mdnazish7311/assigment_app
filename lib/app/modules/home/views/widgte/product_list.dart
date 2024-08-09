// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:assignment_app/app/data/utility/appcolors.dart';
import 'package:assignment_app/app/modules/home/controllers/home_controller.dart';
import 'package:assignment_app/app/modules/home/views/style/produclist_style.dart';
import 'package:assignment_app/app/modules/home/views/widgte/product_card.dart';
import 'package:assignment_app/app/modules/productDetails/views/product_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Widget buildProductsList(HomeController controller) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Seasonal Products',
          style: productStyle(AppColors.blackColor, 14.sp, FontWeight.bold)),
      SizedBox(height: 8.h),
      ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: controller.productList.length,
        itemBuilder: (context, index) {
          final product = controller.productList[index];
          return Ink(
              color: AppColors.whiteColor,
              child: InkWell(
                  onTap: () {
                    Get.to(() => ProductDetailPage(product: product));
                  },
                  child: productCardList(product)));
        },
      ),
    ],
  );
}
