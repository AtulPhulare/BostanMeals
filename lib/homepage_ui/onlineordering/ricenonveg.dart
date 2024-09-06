import 'package:flutter/material.dart';
import 'cart.dart';
import 'ProductModel.dart';
import 'package:flutter_app/homepage_ui/main.dart';


// ignore: must_be_immutable
class Ricenonveg extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  Ricenonveg(this._valueSetter);

  List<ProductModel> products = [


    ProductModel("Chicken Manchurian Fried Rice", 160),
    ProductModel("Chicken Fried Rice", 130),
    ProductModel("Chicken Schezwan Fried Rice", 140),
    ProductModel("Chicken Triple Rice", 160),
    ProductModel("Chicken Triple Schezwan Friend Rice", 170),
    ProductModel("Mix Fried Rice", 160),
    ProductModel("Egg Fried Rice", 120),
    ProductModel("Prawns Fried Rice", 140),
    ProductModel("Prawns Schezwan Rice", 150),
    ProductModel("Bostan Special Fried Rice", 140),
    ProductModel("Chicken Rice Noodles", 150),
    ProductModel("Krispa Rice", 410),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            subtitle: Text("Rice Non Veg."),
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