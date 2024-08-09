class Product {
  List<ProductList>? productList;

  Product({this.productList});

  Product.fromJson(Map<String, dynamic> json) {
    if (json['ProductList'] != null) {
      productList = <ProductList>[];
      json['ProductList'].forEach((v) {
        productList?.add(ProductList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (productList != null) {
      data['ProductList'] = productList?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ProductList {
  int? id;
  String? name;
  String? weight;
  String? price;
  String? image;
  String? description;
  int? quantity;

  ProductList(
      {this.id,
      this.name,
      this.weight,
      this.price,
      this.image,
      this.quantity = 0,
      this.description});

  ProductList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    weight = json['weight'];
    price = json['price'];
    image = json['image'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['weight'] = weight;
    data['price'] = price;
    data['image'] = image;
    data['description'] = description;
    return data;
  }
}
