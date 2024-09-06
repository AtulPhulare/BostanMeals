import 'package:flutter/material.dart';
import 'cart.dart';
import 'ProductModel.dart';
import 'package:flutter_app/homepage_ui/main.dart';


// ignore: must_be_immutable
class Papadahisal extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  Papadahisal(this._valueSetter);

  List<ProductModel> products = [

    ProductModel("Papad Fried", 10),
    ProductModel("Dahi/Dahi Raita", 30),
    ProductModel("Dahi Sugar", 30),
    ProductModel("Green Salad", 25),
    ProductModel("Tomato Salad", 25),
    ProductModel("Bundi Raita", 40),
    ProductModel("Pineapple Raita", 40),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            subtitle: Text("Papad/Dahi/Salad"),
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