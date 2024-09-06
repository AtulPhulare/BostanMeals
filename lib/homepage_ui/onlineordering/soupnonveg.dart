import 'package:flutter/material.dart';
import 'cart.dart';
import 'ProductModel.dart';
//import 'package:trial1/main.dart';


// ignore: must_be_immutable
class Soupnonveg extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  Soupnonveg(this._valueSetter);

  List<ProductModel> products = [

    ProductModel("Chicken Manchow Soup with Noodles", 120),
    ProductModel("Chicken Hot & Sour Soup", 120),
    ProductModel("Chicken Sweet Corn Soup", 110),
    ProductModel("Chicken Mushroom Soup", 120),
    ProductModel("Chicken Clear Soup", 90),
    ProductModel("Egg Sweet Corn Soup", 100),
    ProductModel("Chicken Soup", 80),
    ProductModel("Mutton Soup", 100),
    ProductModel("Paya Soup", 120),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            subtitle: Text("Soup Non-Veg"),
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