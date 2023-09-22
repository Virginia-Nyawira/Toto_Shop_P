
import 'package:flutter/material.dart';
import 'package:toto_shop/Home/Models/product_model.dart';
import 'package:toto_shop/Home/Services/get_products_service.dart';

class HomeProductsProvider with ChangeNotifier{
  final GetHomeProducts _getHomeProducts =GetHomeProducts();
  bool isLoaded = false;

List<HomeProducts> _myHomeProducts=[];
  List<HomeProducts> get homeProducts =>_myHomeProducts;

  Future<void> getAllProducts () async{
    isLoaded=true;
    notifyListeners();

    final response =  await _getHomeProducts.getHomeProducts();

    _myHomeProducts= response;
    isLoaded=false;
    notifyListeners();
  }

}
