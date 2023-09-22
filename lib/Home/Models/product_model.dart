// To parse this JSON data, do
//
//     final homeProducts = homeProductsFromJson(jsonString);

import 'dart:convert';

List<HomeProducts> homeProductsFromJson(String str) => List<HomeProducts>.from(json.decode(str).map((x) => HomeProducts.fromJson(x)));

String homeProductsToJson(List<HomeProducts> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HomeProducts {
    String? id;
    String? image;
    String? description;
    String? newPrice;
    String? oldPrice;
    String? discount;
    String? size;
    String? seller;

    HomeProducts({
        this.id,
        this.image,
        this.description,
        this.newPrice,
        this.oldPrice,
        this.discount,
        this.size,
        this.seller,
    });

    HomeProducts copyWith({
        String? id,
        String? image,
        String? description,
        String? newPrice,
        String? oldPrice,
        String? discount,
        String? size,
        String? seller,
    }) => 
        HomeProducts(
            id: id ?? this.id,
            image: image ?? this.image,
            description: description ?? this.description,
            newPrice: newPrice ?? this.newPrice,
            oldPrice: oldPrice ?? this.oldPrice,
            discount: discount ?? this.discount,
            size: size ?? this.size,
            seller: seller ?? this.seller,
        );

    factory HomeProducts.fromJson(Map<String, dynamic> json) => HomeProducts(
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
