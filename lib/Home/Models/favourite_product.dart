class FavoriteProduct {
  final String? id;
  final String? image;
  final String? description;
  final String? newPrice;
  final String? oldPrice;
  final String? discount;
  final String? size;
  final String? seller;

  FavoriteProduct({
    this.id,
    this.image,
    this.description,
    this.newPrice,
    this.oldPrice,
    this.discount,
    this.size,
    this.seller,
  });

  factory FavoriteProduct.fromJson(Map<String, dynamic> json) => FavoriteProduct(
    id: json["id"],
    image: json["image"],
    description: json["description"],
    newPrice: json["newPrice"],
    oldPrice: json["oldPrice"],
    discount: json["discount"],
    size: json["size"],
    seller: json["seller"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "description": description,
    "newPrice": newPrice,
    "oldPrice": oldPrice,
    "discount": discount,
    "size": size,
    "seller": seller,
  };
}
