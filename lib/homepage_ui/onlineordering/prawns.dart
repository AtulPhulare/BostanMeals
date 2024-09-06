import 'package:flutter/material.dart';
import 'cart.dart';
import 'ProductModel.dart';
import 'package:flutter_app/homepage_ui/main.dart';


// ignore: must_be_immutable
class Prawns extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  Prawns(this._valueSetter);

  List<ProductModel> products = [

    ProductModel("Prawns Chilly", 150),
    ProductModel("Prawns Garlic", 150),
    ProductModel("Prawns Manchurian", 150),
    ProductModel("Prawns Schezwan Sauce", 160),
    ProductModel("Prawns Sweet & Sour", 150),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            subtitle: Text("Prawns"),
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