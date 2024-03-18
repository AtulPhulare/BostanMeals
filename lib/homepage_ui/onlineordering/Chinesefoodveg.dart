import 'package:flutter/material.dart';
import 'cart.dart';
import 'ProductModel.dart';
import 'package:flutter_app/homepage_ui/main.dart';


// ignore: must_be_immutable
class Chinesefoodveg extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  Chinesefoodveg(this._valueSetter);

  List<ProductModel> products = [

    ProductModel("Veg Manchurian", 130),
    ProductModel("Veg Chilly", 130),
    ProductModel("Veg Schezwan Chilly", 140),
    ProductModel("Veg Garlic Sauce", 130),
    ProductModel("Veg Hong Kong", 130),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            subtitle: Text("Chinese Food Veg."),
            title: Text(products[index].name),
            trailing: Text("Rs.${products[index].price}", style: TextStyle(color: Colors.redAccent, fontSize: 20, fontWeight: FontWeight.w500),),
            onTap: (){
              _valueSetter(products[index]);
            },
          );
        },
        separatorBuilder: (context, index){
          return Divider();
        },
        itemCount: products.length
    );
  }
}