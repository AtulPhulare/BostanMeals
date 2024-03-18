import 'package:flutter/material.dart';
import 'cart.dart';
import 'ProductModel.dart';
import 'package:flutter_app/homepage_ui/main.dart';


// ignore: must_be_immutable
class Paneerchinesefood extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  Paneerchinesefood(this._valueSetter);

  List<ProductModel> products = [

    ProductModel("Paneer Chilly", 150),
    ProductModel("Paneer Manchurian", 150),
    ProductModel("Paneer Schezwan Chilly", 160),
    ProductModel("Paneer Garlic Sauce", 150),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            subtitle: Text("Paneer Chinese Food Veg."),
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