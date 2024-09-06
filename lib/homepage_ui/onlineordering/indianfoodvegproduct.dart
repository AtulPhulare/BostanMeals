import 'package:flutter/material.dart';
import 'cart.dart';
import 'ProductModel.dart';
import 'package:flutter_app/homepage_ui/main.dart';


// ignore: must_be_immutable
class IndianFoodVeg extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  IndianFoodVeg(this._valueSetter);

  List<ProductModel> products = [

    ProductModel("Veg Jaipuri", 150),
    ProductModel("Veg Kolhapuri", 130),
    ProductModel("Veg Makhanwala", 120),
    ProductModel("Veg Shahi Korma", 110),
    ProductModel("Veg Navratan Korma", 110),
    ProductModel("Veg Kashmiri Alu Dam", 120),
    ProductModel("Veg Kadai", 160),
    ProductModel("Mushroom Mutter Masala", 120),
    ProductModel("Mushroom Kadai", 150),
    ProductModel("Paneer Tikka Masala", 150),
    ProductModel("Paneer Makhani", 140),
    ProductModel("Paneer Shahi Korma", 120),
    ProductModel("Paneer Bhurji", 120),
    ProductModel("Paneer Mutter", 110),
    ProductModel("Paneer Palak", 110),
    ProductModel("Paneer Kadai", 170),
    ProductModel("Mix Veg.", 100),
    ProductModel("Alu Palak", 100),
    ProductModel("Chana Masala", 100),
    ProductModel("Alu Mutter", 100),
    ProductModel("Dal Fried", 80),
    ProductModel("Dal Fried Butter", 85),
    ProductModel("Dal Tadka", 100),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            subtitle: Text("Indian food Veg."),
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