import 'package:flutter/material.dart';
import 'cart.dart';
import 'ProductModel.dart';
import 'package:flutter_app/homepage_ui/main.dart';


// ignore: must_be_immutable
class Noodlesnonveg extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  Noodlesnonveg(this._valueSetter);

  List<ProductModel> products = [

    ProductModel("Chicken Fried Noodles", 140),
    ProductModel("Chicken Schezwan Noodles", 150),
    ProductModel("Mix Fried Noodles", 170),
    ProductModel("Mix Schezwan Noodles", 180),
    ProductModel("Chicken American Nood. Chopsuey", 150),
    ProductModel("Mix American Chopsuey", 170),
    ProductModel("Chicken Schezwan Chopsuey", 160),
    ProductModel("Mix Schezwan Chopsuey", 180),
    ProductModel("Egg Fried Noodles", 130),
    ProductModel("Prawns Fried Noodles", 150),
    ProductModel("Prawns Schezwan Noodles", 160),
    ProductModel("Prawns Chowmein", 150),
    ProductModel("Chicken Chowmein", 140),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            subtitle: Text("Noodles Non-Veg."),
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