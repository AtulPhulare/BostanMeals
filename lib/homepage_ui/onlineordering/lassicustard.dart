import 'package:flutter/material.dart';
import 'cart.dart';
import 'ProductModel.dart';
import 'package:flutter_app/homepage_ui/main.dart';


// ignore: must_be_immutable
class LassiCust extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  LassiCust(this._valueSetter);

  List<ProductModel> products = [

    ProductModel("Lassi Sweet", 50),
    ProductModel("Lassi Salt", 50),
    ProductModel("Lassi Mango", 50),
    ProductModel("Chaas", 30),
    ProductModel("Custard(Caramal)", 40),
    ProductModel("Kesar Lassi", 50),
    ProductModel("Strawberry Lassi", 50),
    ProductModel("Fruit Salad", 60),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            subtitle: Text("Lassi/Custard/Chaas"),
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