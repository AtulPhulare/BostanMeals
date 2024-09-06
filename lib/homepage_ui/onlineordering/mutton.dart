import 'package:flutter/material.dart';
import 'cart.dart';
import 'ProductModel.dart';
import 'package:flutter_app/homepage_ui/main.dart';


// ignore: must_be_immutable
class Mutton extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  Mutton(this._valueSetter);

  List<ProductModel> products = [

    ProductModel("Mutton Special Bostan", 180),
    ProductModel("Mutton Green Masala", 150),
    ProductModel("Mutton Rogan Josh", 150),
    ProductModel("Mutton Shahi Korma", 150),
    ProductModel("Mutton Afghani", 160),
    ProductModel("Mutton Moghlai", 160),
    ProductModel("Mutton Do-Piyaza", 150),
    ProductModel("Mutton Palak", 150),
    ProductModel("Mutton Dahiwala", 150),
    ProductModel("Mutton Masala", 140),
    ProductModel("Mutton Masala Fried", 150),
    ProductModel("Mutton Kolhapuri", 170),
    ProductModel("Mutton Plain Fried(6 Pcs)", 190),
    ProductModel("Mutton Kadai", 180),
    ProductModel("Mutton Handi", 180),
    ProductModel("Mutton Bhuna", 220),
    ProductModel("Mutton Chatapata", 190),
    ProductModel("Mutton Chingari", 190),
    ProductModel("Mutton Laziz", 190),
    ProductModel("Mutton White", 160),
    ProductModel("Mutton Rashida", 160),
    ProductModel("Mutton Hyderabadi", 180),
    ProductModel("Mutton Kichda (Friday)", 140),
    ProductModel("Mutton Kheema", 80),
    ProductModel("Mutton Kheema Fry", 90),
    ProductModel("Mutton Kheema Gotala", 100),
    ProductModel("Dal Gosht", 140),
    ProductModel("Brain Masala", 160),
    ProductModel("Brain Masala Fried", 170),
    ProductModel("Brain Bhurji", 150),
    ProductModel("Brain Egg Bhurji", 170),
    ProductModel("Brain Plain Fried", 140),
    ProductModel("Brain Egg Fried", 150),
    ProductModel("Paya Masala", 140),
    ProductModel("Paya Masala Fry", 150),


  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            subtitle: Text("Mutton"),
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