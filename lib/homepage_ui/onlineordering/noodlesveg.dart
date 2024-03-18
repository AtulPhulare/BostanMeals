import 'package:flutter/material.dart';
import 'cart.dart';
import 'ProductModel.dart';
import 'package:flutter_app/homepage_ui/main.dart';


// ignore: must_be_immutable
class Noodlesveg extends StatelessWidget {
final ValueSetter<ProductModel> _valueSetter;

Noodlesveg(this._valueSetter);

List<ProductModel> products = [

ProductModel("Veg Fried Noodles", 130),
ProductModel("Veg Schezwan Noodles", 140),
ProductModel("Veg American Chopsuey", 140),
ProductModel("Veg American Schezwan Chopsuey", 150),
ProductModel("Veg Chowmein", 130),

];

@override
Widget build(BuildContext context) {
return ListView.separated(
itemBuilder: (context, index){
return ListTile(
subtitle: Text("Noodles Veg."),
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