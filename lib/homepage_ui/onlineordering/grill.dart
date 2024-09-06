import 'package:flutter/material.dart';
import 'cart.dart';
import 'ProductModel.dart';
import 'package:flutter_app/homepage_ui/main.dart';


// ignore: must_be_immutable
class Grill extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  Grill(this._valueSetter);

  List<ProductModel> products = [

    ProductModel("Chicken Tandoori Deluxe Full", 290),
    ProductModel("Chicken Tandoori Half", 160),
    ProductModel("Chicken Schezwan Tandoori Full", 340),
    ProductModel("Chicken Schezwan Tandoori Half", 190),
    ProductModel("Chicken Lemon Tandoori Full", 290),
    ProductModel("Chicken Lemon Tandoori Half", 160),
    ProductModel("Chicken Tandoori Leg", 130),
    ProductModel("Mix Grill(Dry)", 260),
    ProductModel("Chicken Tangdi Kabab", 140),
    ProductModel("Chicken Tikka(6pcs)", 140),
    ProductModel("Green Tikka(6pcs)", 140),
    ProductModel("Chicken Schezwan Tikka(6pcs.)", 190),
    ProductModel("Reshmi Kabab(5pcs)", 160),
    ProductModel("Paneer Tikka", 150),
    ProductModel("Chicken Cheesy Kabab(5pcs)", 170),
    ProductModel("Chicken Roasted Lollypop(6pcs)", 160),
    ProductModel("Chicken Sheek Kabab", 130),
    ProductModel("Chicken Kalamari Kabab", 170),
    ProductModel("Malai Kabab", 170),




  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            subtitle: Text("Grill"),
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