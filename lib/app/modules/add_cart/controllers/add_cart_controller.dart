import 'package:assignment_app/app/modules/home/product_model.dart';
import 'package:assignment_app/app/modules/home/recend_ordered_product_model.dart';
import 'package:get/get.dart';

class AddCartController extends GetxController {
  // var itemsInCart = 0.obs;
  // RxDouble totalPrice = 0.0.obs;
  RxList<ProductList> cartItems = <ProductList>[].obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void addToCart(ProductList product) {
    final existingProduct =
        cartItems.firstWhereOrNull((item) => item.id == product.id);
    if (existingProduct != null) {
      existingProduct.quantity = (existingProduct.quantity ?? 0) + 1;
      cartItems.refresh();
    } else {
      product.quantity = 1;
      cartItems.add(product);
    }
  }

  //  *************************************  remove item from  cart ****************************************************************

  void removeFromCart(ProductList product) {
    final existingProduct =
        cartItems.firstWhereOrNull((item) => item.id == product.id);

    if (existingProduct != null) {
      if ((existingProduct.quantity ?? 0) > 1) {
        existingProduct.quantity = (existingProduct.quantity ?? 0) - 1;
        cartItems.refresh();
      } else {
        cartItems.remove(existingProduct);
      }
    }
  }

  // ******************************************************** get total item in  cart******************************************************************************************

  int get totalItems {
    return cartItems.fold<int>(
      0,
      (sum, item) => sum + (item.quantity ?? 0),
    );
  }

  //  ***************************************** get total price of  card ****************************************************************************

  double get totalPrices {
    return cartItems.fold<double>(
      0.0,
      (sum, item) =>
          sum +
          (double.tryParse(item.price ?? '0') ?? 0) * (item.quantity ?? 0),
    );
  }
}
