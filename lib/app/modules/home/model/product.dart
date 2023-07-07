// ignore_for_file: public_member_api_docs, sort_constructors_first
class Product {
  int? id;
  String? name;
  String? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  Product(
      {this.id,
      this.name,
      this.price,
      this.description,
      this.category,
      this.image,
      this.rating});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    description = json['description'];
    category = json['category'];
    image = json['image'];
    rating = json['rating'] != null ? Rating.fromJson(json['rating']) : null;
  }

  Map<String, dynamic> toJson() {
    // {"id":1,"name":"product1","description":"hello product description","picture":null,"price":"100","discount":0.0,"inStock":false}
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['price'] = price;
    data['description'] = description;
    data['category'] = category;
    data['image'] = image;
    if (rating != null) {
      data['rating'] = rating!.toJson();
    }
    return data;
  }

  @override
  bool operator ==(covariant Product other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.price == price &&
        other.description == description &&
        other.category == category &&
        other.image == image &&
        other.rating == rating;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        price.hashCode ^
        description.hashCode ^
        category.hashCode ^
        image.hashCode ^
        rating.hashCode;
  }
}

class Rating {
  double? rate;
  int? count;

  Rating({this.rate, this.count});

  Rating.fromJson(Map<String, dynamic> json) {
    rate = json['rate'];
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['rate'] = rate;
    data['count'] = count;
    return data;
  }
}
