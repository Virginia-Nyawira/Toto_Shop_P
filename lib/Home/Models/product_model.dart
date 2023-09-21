// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'dart:convert';

List<Products> productsFromJson(String str) => List<Products>.from(json.decode(str).map((x) => Products.fromJson(x)));

String productsToJson(List<Products> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Products {
    String? id;
    String? image;
    String? description;
    String? newPrice;
    String? oldPrice;
    String? discount;
    String? size;
    String? seller;

    Products({
        this.id,
        this.image,
        this.description,
        this.newPrice,
        this.oldPrice,
        this.discount,
        this.size,
        this.seller,
    });

    Products copyWith({
        String? id,
        String? image,
        String? description,
        String? newPrice,
        String? oldPrice,
        String? discount,
        String? size,
        String? seller,
    }) => 
        Products(
            id: id ?? this.id,
            image: image ?? this.image,
            description: description ?? this.description,
            newPrice: newPrice ?? this.newPrice,
            oldPrice: oldPrice ?? this.oldPrice,
            discount: discount ?? this.discount,
            size: size ?? this.size,
            seller: seller ?? this.seller,
        );

    factory Products.fromJson(Map<String, dynamic> json) => Products(
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
