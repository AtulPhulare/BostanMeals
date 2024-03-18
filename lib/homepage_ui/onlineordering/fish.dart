import 'package:flutter/material.dart';
import 'cart.dart';
import 'ProductModel.dart';
import 'package:flutter_app/homepage_ui/main.dart';


// ignore: must_be_immutable
class Fish extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  Fish(this._valueSetter);

  List<ProductModel> products = [

    ProductModel("Fish Chilly", 160),
    ProductModel("Fish Garlic", 160),
    ProductModel("Fish Manchurian", 160),
    ProductModel("Fish Schezwan Sauce", 170),
    ProductModel("Fish Sweet & Sour", 170),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            subtitle: Text("Fish"),
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