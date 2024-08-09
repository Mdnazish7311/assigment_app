// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:assignment_app/app/appComponent.dart/appbar_widget.dart';
import 'package:assignment_app/app/modules/add_cart/controllers/add_cart_controller.dart';
import 'package:assignment_app/app/modules/home/views/widgte/product_list.dart';
import 'package:assignment_app/app/modules/home/views/widgte/search_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../add_cart/views/add_cart_view.dart';
import '../controllers/home_controller.dart';
import 'widgte/banner_widget.dart';
import 'widgte/category_widget.dart';
import 'widgte/recent_orderd_product.dart';
import 'widgte/simmer_widget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AddCartController addCartController = Get.put(AddCartController());
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: appbarComponent(),
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
            })),
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
