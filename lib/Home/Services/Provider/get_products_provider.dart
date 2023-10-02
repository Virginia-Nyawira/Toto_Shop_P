
import 'package:flutter/material.dart';
import 'package:toto_shop/Home/Models/product_model.dart';
import 'package:toto_shop/Home/Services/get_products_service.dart';

class HomeProductsProvider with ChangeNotifier{
  final GetHomeProducts _getHomeProducts =GetHomeProducts();
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
    isLoaded=false;
    notifyListeners();
  }
  
//Add to favourites list
  void addToFavourite(HomeProducts favProduct){
    _favouriteProducts.add(favProduct);
    print(_favouriteProducts.length);
    print(favProduct.newPrice);
    notifyListeners();

      
    // if(_favouriteProducts.contains(favProduct)){
    //   _favouriteProducts.add(favProduct);
    // print("favouriteProducts succesfully added");
    //   notifyListeners(); 
    // }
    // else{
    //   print("No item added");
    // }

    // favouriteProducts.add(favProduct);
    // notifyListeners();
    
  }


}
