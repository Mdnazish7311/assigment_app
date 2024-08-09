class RecendOrderedProduct {
  List<RecentOrderedProductList>? recentOrderedProductLists;

  RecendOrderedProduct({this.recentOrderedProductLists});

  factory RecendOrderedProduct.fromJson(Map<String, dynamic> json) {
    return RecendOrderedProduct(
      recentOrderedProductLists: json['RecentOrderedProduct'] != null
          ? List<RecentOrderedProductList>.from(json['RecentOrderedProduct']
              .map((v) => RecentOrderedProductList.fromJson(v)))
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (recentOrderedProductLists != null) {
      data['RecentOrderedProduct'] =
          recentOrderedProductLists!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class RecentOrderedProductList {
  int? id;
  String? name;
  String? weight;
  String? price;
  String? image;
  String? description;
  int? quantity;

  RecentOrderedProductList(
      {this.id,
      this.name,
      this.weight,
      this.price,
      this.image,
      this.quantity = 1,
      this.description});

  factory RecentOrderedProductList.fromJson(Map<String, dynamic> json) {
    return RecentOrderedProductList(
      id: json['id'],
      name: json['name'],
      weight: json['weight'],
      price: json['price'],
      image: json['image'],
      description: json['description'],
    );
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
