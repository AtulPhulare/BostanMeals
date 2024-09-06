import 'package:flutter/material.dart';
import 'cart.dart';
import 'ProductModel.dart';
//import 'package:trial1/main.dart';


// ignore: must_be_immutable
class Soup extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  Soup(this._valueSetter);

  List<ProductModel> products = [

    ProductModel("Veg Manchow Soup with Noodles", 110),
    ProductModel("Veg Hot & Sour Soup", 110),
    ProductModel("Veg Sweet Corn Soup", 100),
    ProductModel("Veg Mushroom Soup", 100),
    ProductModel("Veg Clear Soup", 80),
    ProductModel("Veg Sweet Corn Plain Soup", 90),
    ProductModel("Veg Tomato Soup", 90),
    ProductModel("Veg Soup", 70),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            subtitle: Text("Veg. Soup"),
            title: Text(products[index].name),
            trailing: Text("Rs.${products[index].price}", style: TextStyle(color: Colors.redAccent, fontSize: 20, fontWeight: FontWeight.w500),),
            onTap: (){
              _valueSetter(products[index]);
            },
          );
          return null;
        },
        separatorBuilder: (context, index){
          return Divider();
        },
        itemCount: products.length
    );
  }
}