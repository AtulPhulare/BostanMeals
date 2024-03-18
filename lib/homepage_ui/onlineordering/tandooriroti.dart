import 'package:flutter/material.dart';
import 'cart.dart';
import 'ProductModel.dart';
//import 'package:trial1/main.dart';


// ignore: must_be_immutable
class Tandooriroti extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  Tandooriroti(this._valueSetter);

  List<ProductModel> products = [

    ProductModel("Tandoori Roti", 10),
    ProductModel("Butter Roti", 15),
    ProductModel("Tandoori Paratha", 20),
    ProductModel("Butter Paratha", 25),
    ProductModel("Alu Paratha", 70),
    ProductModel("Tandoori Nan", 20),
    ProductModel("Butter Nan", 25),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            subtitle: Text("Tandoori Roti"),
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