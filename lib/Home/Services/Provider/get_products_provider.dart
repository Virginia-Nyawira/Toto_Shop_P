
import 'package:flutter/material.dart';
import 'package:toto_shop/Home/Models/favourite_product_storage.dart';
import 'package:toto_shop/Home/Models/product_model.dart';
import 'package:toto_shop/Home/Services/get_products_service.dart';

class HomeProductsProvider with ChangeNotifier{
  final GetHomeProducts _getHomeProducts =GetHomeProducts();
  final FavoriteProductsStorage _favoriteProductsStorage = FavoriteProductsStorage();
  bool isLoaded = false;

List<HomeProducts> _myHomeProducts=[];
  List<HomeProducts> get homeProducts =>_myHomeProducts;

  List<HomeProducts> _favouriteProducts = [];
  List<HomeProducts> get favouriteProducts => _favouriteProducts;

  Future<void> getAllProducts () async{
    isLoaded=true;
    notifyListeners();

    final response =  await _getHomeProducts.getHomeProducts();
    _myHomeProducts= response;

    //Load Favourite Product from Storage
     final storedFavouriteProduct= await _favoriteProductsStorage.getFavoriteProducts();
     _favouriteProducts = storedFavouriteProduct;

    isLoaded=false;
    notifyListeners();
  }
  
//Add to favourites list
  void addToFavourite(HomeProducts favProduct) async{
    _favouriteProducts.add(favProduct);
    print(_favouriteProducts.length);
    print(favProduct.newPrice);
    notifyListeners();
     // Save updated favorite products to storage
    await _favoriteProductsStorage.setFavoriteProducts(_favouriteProducts);
    
  }

  /// Logic for managing favorite products using the FavoriteProductsStorage class
}
