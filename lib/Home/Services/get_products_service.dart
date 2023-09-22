
import 'package:toto_shop/Config/Constants/constants.dart';
import 'package:toto_shop/Home/Models/product_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GetHomeProducts{
  Future<List<HomeProducts>> getHomeProducts() async{
  final uri= Uri.parse(url);
  final productResponse = await http.get(uri);

  if(productResponse.statusCode==200){
    final json = jsonDecode(productResponse.body) as List;

    final homeProduct = json
          .map((e) => HomeProducts(
              id: e['id'],
              image: e['image'],
              description: e['description'],
              newPrice: e['newPrice'],
              oldPrice: e['oldPrice'],
              discount: e['discount'],
              size: e['size'],
              seller: e['seller'],
             ))
          .toList();
      return homeProduct;
  }
   else{
    print("GIRL! YOU NEED TO CHECK OUT THE ERROR");
    throw "Something is definately wrong"; 
   }
  }
}