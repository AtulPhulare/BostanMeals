import 'package:flutter/material.dart';
import 'cart.dart';
import 'ProductModel.dart';
import 'package:flutter_app/homepage_ui/main.dart';


// ignore: must_be_immutable
class Snacks extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  Snacks(this._valueSetter);

  List<ProductModel> products = [

    ProductModel("Bread Slice(One Piece)", 05),
    ProductModel("Bread Butter Slice", 20),
    ProductModel("Toast Butter Slice", 30),
    ProductModel("Egg Omlet(Two)", 50),
    ProductModel("Egg Bhurji(Two)", 60),
    ProductModel("Egg Boiled(Two)", 30),
    ProductModel("Chicken Sandwich", 50),
    ProductModel("Mutton Sandwich", 60),
    ProductModel("Veg Sandwich", 40),
    ProductModel("Egg Sandwich", 45),
    ProductModel("Omlet Sandwich", 45),
    ProductModel("Cheese Sandwich", 40),
    ProductModel("Non Veg Club Sandwich", 100),
    ProductModel("Veg Club Sandwich", 80),
    ProductModel("Chicken Club Sandwich", 90),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            subtitle: Text("Snacks"),
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