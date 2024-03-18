import 'package:flutter/material.dart';
import 'cart.dart';
import 'ProductModel.dart';
import 'package:flutter_app/homepage_ui/main.dart';


// ignore: must_be_immutable
class Mushroom extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  Mushroom(this._valueSetter);

  List<ProductModel> products = [

    ProductModel("Mushroom Chilly", 130),
    ProductModel("Mushroom Schezwan Chilly", 140),
    ProductModel("Mushroom Manchurian", 130),
    ProductModel("Mushroom Garlic Sauce", 130),
    ProductModel("Mushroom Schezwan Garlic Sauce", 140),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            subtitle: Text("Mushroom Veg."),
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