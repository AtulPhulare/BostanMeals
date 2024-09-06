import 'package:flutter/material.dart';
import 'cart.dart';
import 'ProductModel.dart';
import 'package:flutter_app/homepage_ui/main.dart';


// ignore: must_be_immutable
class Icecream extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  Icecream(this._valueSetter);

  List<ProductModel> products = [

    ProductModel("Casata", 40),
    ProductModel("Kesar Pista", 50),
    ProductModel("Vanilla", 40),
    ProductModel("Strawberry", 40),
    ProductModel("Butter Scotch", 50),
    ProductModel("Chocolate Slice", 50),
    ProductModel("Kesar Kulfi", 50),
    ProductModel("Malai Kulfi", 50),
    ProductModel("Kulfi Falooda Dry", 70),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            subtitle: Text("Ice-Cream"),
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