import 'package:flutter/material.dart';
import 'cart.dart';
import 'ProductModel.dart';
import 'package:flutter_app/homepage_ui/main.dart';


// ignore: must_be_immutable
class Milkshakes extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  Milkshakes(this._valueSetter);

  List<ProductModel> products = [

    ProductModel("Mango Milk Shake(Fruit)", 70),
    ProductModel("Apple Milk Shake(Fruit)", 70),
    ProductModel("Chikku Milk Shake(Fruit)", 70),
    ProductModel("Pineapple Milk Shake(Fruit)", 70),
    ProductModel("Chocolate Milk Shake(Icecream)", 70),
    ProductModel("Kesar Pista Milk Shake(Icecream)", 70),
    ProductModel("Strawberry Milk Shake(Icecream)", 70),
    ProductModel("Vanilla Milk Shake(Icecream)", 70),
    ProductModel("Butter Scotch Milk Shake(Icecream)", 70),
    ProductModel("Cold Coffee", 60),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            subtitle: Text("Milkshakes"),
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