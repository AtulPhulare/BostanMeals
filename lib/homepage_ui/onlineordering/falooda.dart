import 'package:flutter/material.dart';
import 'cart.dart';
import 'ProductModel.dart';
import 'package:flutter_app/homepage_ui/main.dart';


// ignore: must_be_immutable
class Falooda extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  Falooda(this._valueSetter);

  List<ProductModel> products = [

    ProductModel("Kesar Falooda", 80),
    ProductModel("Strawberry Falooda", 70),
    ProductModel("Butter Scotch Falooda", 70),
    ProductModel("Chocolate Falooda", 80),
    ProductModel("Kulfi Falooda Dry", 70),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            subtitle: Text("Falooda"),
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