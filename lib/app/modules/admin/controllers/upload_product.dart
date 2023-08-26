class UploadProduct {
  String? name;
  String? description;
  String? picture;
  String? price;
  int? discount;
  bool? inStock;
  String? category;

  UploadProduct(
      {this.name,
      this.description,
      this.picture,
      this.price,
      this.discount,
      this.inStock,
      this.category});

  UploadProduct.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    picture = json['picture'];
    price = json['price'];
    discount = json['discount'];
    inStock = json['inStock'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['name'] = name;
    data['description'] = description;
    data['picture'] = picture;
    data['price'] = price;
    data['discount'] = discount;
    data['inStock'] = inStock;
    data['category'] = category;
    return data;
  }
}
