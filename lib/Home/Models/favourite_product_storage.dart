/// a class that handles storing and retrieving favorite products using SharedPreferences. 
/// This class is responsible for interacting with the storage

import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toto_shop/Home/Models/product_model.dart';


class FavoriteProductsStorage {
  static const _favoritesKey = 'favorites';

  Future<List<HomeProducts>> getFavoriteProducts() async {
    final prefs = await SharedPreferences.getInstance();
    final favoriteProductsJson = prefs.getString(_favoritesKey);

    if (favoriteProductsJson != null) {
      final favoriteProductsList = jsonDecode(favoriteProductsJson) as List;
      return favoriteProductsList
          .map((json) => HomeProducts.fromJson(json))
          .toList();
    } else {
      return [];
    }
  }

  Future<void> setFavoriteProducts(List<HomeProducts> favoriteProducts) async {
    final prefs = await SharedPreferences.getInstance();
    final favoriteProductsJson = jsonEncode(favoriteProducts);
    await prefs.setString(_favoritesKey, favoriteProductsJson);
  }
}
