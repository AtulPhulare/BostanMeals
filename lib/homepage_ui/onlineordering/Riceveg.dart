import 'package:flutter/material.dart';
import 'cart.dart';
import 'ProductModel.dart';
import 'package:flutter_app/homepage_ui/main.dart';


// ignore: must_be_immutable
class Riceveg extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  Riceveg(this._valueSetter);

  List<ProductModel> products = [

    ProductModel("Veg Rice", 45),
    ProductModel("Veg Jeera Rice", 50),
    ProductModel("Veg Fried Rice", 120),
    ProductModel("Veg Schezwan Fried Rice", 130),
    ProductModel("Veg Triple Rice", 150),
    ProductModel("Veg Triple Schezwan Fried Rice", 160),
    ProductModel("Veg Jeera Fried Rice", 100),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            subtitle: Text("Veg. Rice"),
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