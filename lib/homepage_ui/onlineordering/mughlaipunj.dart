import 'package:flutter/material.dart';
import 'cart.dart';
import 'ProductModel.dart';
import 'package:flutter_app/homepage_ui/main.dart';


// ignore: must_be_immutable
class Mughlaipunj extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  Mughlaipunj(this._valueSetter);

  List<ProductModel> products = [

    ProductModel("Chicken Special Bostan", 170),
    ProductModel("Murg Musallam(Red)", 440),
    ProductModel("Murg Musallam(Half Red)", 230),
    ProductModel("Mix Grill(Gravy)", 250),
    ProductModel("Butter Chicken", 160),
    ProductModel("Chicken Rashida", 130),
    ProductModel("Chicken Tikka Masala", 150),
    ProductModel("Chicken Green Tikka Masala", 140),
    ProductModel("Chicken Reshmi Kabab Masala", 260),
    ProductModel("Chicken Tangdi Kabab Masala", 140),
    ProductModel("Chicken Green Masala", 130),
    ProductModel("Chicken Masala", 130),
    ProductModel("Chicken Masala Fried", 140),
    ProductModel("Chicken Plain Fried(2pcs)", 140),
    ProductModel("Chicken Shahi Korma", 130),
    ProductModel("Chicken White", 140),
    ProductModel("Chicken Mughlai", 140),
    ProductModel("Chicken Palak", 140),
    ProductModel("Chicken Dahiwala", 140),
    ProductModel("Chicken Do-Piyaza", 140),
    ProductModel("Chicken Patiyala(Boneless)", 170),
    ProductModel("Chicken Kabuli", 160),
    ProductModel("Chicken Afghani(Boneless)", 140),
    ProductModel("Chicken Kadai(Boneless)", 170),
    ProductModel("Chicken Handi(Boneless)", 170),
    ProductModel("Chicken Hyderabadi(Boneless)", 170),
    ProductModel("Chicken Kolhapuri(Boneless)", 160),
    ProductModel("Chicken Chatpata(Boneless)", 180),
    ProductModel("Chicken Laziz(Boneless)", 180),
    ProductModel("Chicken Chingari(Boneless)", 180),
    ProductModel("Chicken Mumtaz(Boneless)", 180),
    ProductModel("Chicken Chatni(Boneless)", 180),
    ProductModel("Chicken Golden(Boneless)", 180),
    ProductModel("Chicken Seek Kabab Masala", 140),
    ProductModel("Chicken Seek Kabab Masala Fry", 150),
    ProductModel("Egg Masala", 110),
    ProductModel("Extra Gravy", 50),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            subtitle: Text("Mughlai-Punjabi Chicken"),
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