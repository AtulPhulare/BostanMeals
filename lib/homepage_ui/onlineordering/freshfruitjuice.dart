import 'package:flutter/material.dart';
import 'cart.dart';
import 'ProductModel.dart';
import 'package:flutter_app/homepage_ui/main.dart';


// ignore: must_be_immutable
class Freshfruitj extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  Freshfruitj(this._valueSetter);

  List<ProductModel> products = [

    ProductModel("Apple Juice", 60),
    ProductModel("Pineapple Juice", 60),
    ProductModel("Grape Juice", 60),
    ProductModel("Cocktail Juice", 70),
    ProductModel("Mosambi Juice", 60),
    ProductModel("Ganga Jamuna Juice", 60),
    ProductModel("Mango Juice", 60),
    ProductModel("Orange Juice", 60),
    ProductModel("Tomato Juice", 50),
    ProductModel("Fresh Lime Juice", 35),
    ProductModel("Fresh Lime Soda", 55),
    ProductModel("Soda", 20),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            subtitle: Text("Fresh Fruit Juice"),
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