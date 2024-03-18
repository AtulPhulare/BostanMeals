import 'package:flutter/material.dart';
import 'cart.dart';
import 'ProductModel.dart';
//import 'package:trial1/main.dart';


// ignore: must_be_immutable
class Starters extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  Starters(this._valueSetter);

  List<ProductModel> products = [

    ProductModel("Chicken Sanghai", 180),
    ProductModel("Chicken Singhapuri", 180),
    ProductModel("Chicken Brostate", 180),
    ProductModel("Chicken Lollypop", 140),
    ProductModel("Chicken Schezwan Lollypop Dry(6pcs)", 170),
    ProductModel("Chicken Finger", 150),
    ProductModel("Chicken Spring Roll", 130),
    ProductModel("Chicken Crispy", 190),
    ProductModel("Chicken Dragon Roll(2pcs)", 120),
    ProductModel("Chicken Oyster Chilly", 190),
    ProductModel("Fish Finger", 170),
    ProductModel("Fish Shanghai", 200),
    ProductModel("Paneer Crispy", 180),
    ProductModel("Veg.Lollypop", 130),
    ProductModel("Veg Spring Roll", 110),
    ProductModel("Veg Crispy", 170),
    ProductModel("Extra Schezwan Sauce", 10),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            subtitle: Text("Starters"),
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