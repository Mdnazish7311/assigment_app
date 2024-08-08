// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:assignment_app/app/data/utility/appcolors.dart';
import 'package:assignment_app/app/modules/home/views/widgte/product_list.dart';
import 'package:assignment_app/app/modules/home/views/widgte/search_widget.dart';
import 'package:assignment_app/app/modules/productDetails/views/product_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import 'widgte/banner_widget.dart';
import 'widgte/category_widget.dart';
import 'widgte/recent_orderd_product.dart';
import 'widgte/simmer_widget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: CircleAvatar(
            radius: 18.r,
            child: Icon(Icons.person),
          ),
        ),
        title: Text(
          'Get_cli Test',
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.whiteColor),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                // Handle logout action
              },
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Obx(() {
          if (controller.isLoading.value) {
            return buildShimmerLoading();
          } else {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildSearchBar(),
                  SizedBox(
                    height: 10.h,
                  ),
                  buildBanner(),
                  SizedBox(
                    height: 10.h,
                  ),
                  buildCategoryList(controller),
                  SizedBox(
                    height: 10.h,
                  ),
                  buildHorizontalProductsList(controller),
                  SizedBox(
                    height: 10.h,
                  ),
                  buildProductsList(controller),
                ],
              ),
            );
          }
        }),
      ),
    );
  }
}
