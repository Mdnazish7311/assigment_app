import 'dart:convert';

import 'package:assignment_app/app/modules/home/model/category_model.dart';
import 'package:assignment_app/app/modules/home/model/product_model.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var isLoading = true.obs;
  var productList = <ProductModel>[].obs;
  var categoriesList =
      <CategoryModel>[].obs; // for storing data from json to list

  @override
  void onInit() {
    super.onInit();
    loadCategoryData();
    loadProductData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  // ***************************** loading data from json file  *****************************8

  void loadProductData() async {
    await Future.delayed(const Duration(seconds: 5));
    isLoading(false);

    try {
      final productString =
          await rootBundle.loadString('assets/jsonFiles/product.json');

      final productData = jsonDecode(productString);

      productList.value = (productData['ProductList'] as List)
          .map((data) => ProductModel.fromJson(data))
          .toList();
    } catch (e) {
      rethrow;
    }
  }

  // *******************************************************************************************************

  loadCategoryData() async {
    try {
      final categoryString =
          await rootBundle.loadString('assets/jsonFiles/category.json');

      final CategoryData = jsonDecode(categoryString);

      categoriesList.value = (CategoryData['CategoryList'] as List)
          .map((data) => CategoryModel.fromJson(data))
          .toList();
    } catch (e) {
      rethrow;
    }
  }
}
