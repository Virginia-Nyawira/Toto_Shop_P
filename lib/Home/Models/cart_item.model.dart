class CartProduct {
  final String? id;
  final String? image;
  final String? description;
  final String? newPrice;
  final String? oldPrice;
  final String? discount;
  final String? size;
  final String? seller;

  CartProduct({
    this.id,
    this.image,
    this.description,
    this.newPrice,
    this.oldPrice,
    this.discount,
    this.size,
    this.seller,
  });

  factory CartProduct.fromJson(Map<String, dynamic> json) => CartProduct(
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
