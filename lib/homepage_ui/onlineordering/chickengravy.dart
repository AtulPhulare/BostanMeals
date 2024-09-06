import 'package:flutter/material.dart';
import 'cart.dart';
import 'ProductModel.dart';
import 'package:flutter_app/homepage_ui/main.dart';


// ignore: must_be_immutable
class Chickengravy extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  Chickengravy(this._valueSetter);

  List<ProductModel> products = [

    ProductModel("Chicken Chilly(Boneless)", 150),
    ProductModel("Chicken Manchurian", 150),
    ProductModel("Chicken Schezwan Sauce", 160),
    ProductModel("Chicken Chow Chow", 150),
    ProductModel("Chicken Garlic Sauce", 150),
    ProductModel("Chicken Lollypop(Gravy) 6pcs.", 170),
    ProductModel("Chicken 65", 160),
    ProductModel("Chicken Sweet & Sour", 150),
    ProductModel("Chicken Hong Kong", 150),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            subtitle: Text("Chicken(Gravy)"),
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