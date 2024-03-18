import 'package:flutter/material.dart';
import 'cart.dart';
import 'ProductModel.dart';
import 'package:flutter_app/homepage_ui/main.dart';


// ignore: must_be_immutable
class Biryanipul extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  Biryanipul(this._valueSetter);

  List<ProductModel> products = [

    ProductModel("Chicken Biryani", 140),
    ProductModel("Chicken Tikka Biryani", 150),
    ProductModel("Mutton Biryani", 160),
    ProductModel("Fish Biryani", 160),
    ProductModel("Mushroom Biryani", 130),
    ProductModel("Egg Biryani", 130),
    ProductModel("Veg Biryani", 130),
    ProductModel("Paneer Tikka Biryani", 130),
    ProductModel("Mutton Pulav", 170),
    ProductModel("Chicken Pulav", 150),
    ProductModel("Chicken Kashmiri Pulav", 140),
    ProductModel("Veg Kashmiri Pulav", 120),
    ProductModel("Veg Pulav", 135),
    ProductModel("Peas Pulav", 135),
    ProductModel("Prawns Pulav", 170),
    ProductModel("Fish Pulav", 170),
    ProductModel("Prawns Biryani", 160),




  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            subtitle: Text("Biryani/Pulav"),
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