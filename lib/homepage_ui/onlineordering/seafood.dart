import 'package:flutter/material.dart';
import 'cart.dart';
import 'ProductModel.dart';
import 'package:flutter_app/homepage_ui/main.dart';


// ignore: must_be_immutable
class Seafood extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  Seafood(this._valueSetter);

  List<ProductModel> products = [

    ProductModel("Fish Fried", 170),
    ProductModel("Fish Masala Fried", 170),
    ProductModel("Prawns Masala Fried", 170),
    ProductModel("Prawns Plain Fried", 160),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            subtitle: Text("Sea Food"),
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