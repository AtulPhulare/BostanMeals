import 'package:flutter_app/homepage_ui/onlineordering/Riceveg.dart';
import 'package:flutter_app/homepage_ui/onlineordering/biryanipul.dart';
import 'package:flutter_app/homepage_ui/onlineordering/chickengravy.dart';
import 'package:flutter_app/homepage_ui/onlineordering/falooda.dart';
import 'package:flutter_app/homepage_ui/onlineordering/fish.dart';
import 'package:flutter_app/homepage_ui/onlineordering/freshfruitjuice.dart';
import 'package:flutter_app/homepage_ui/onlineordering/grill.dart';
import 'package:flutter_app/homepage_ui/onlineordering/hotdrinks.dart';
import 'package:flutter_app/homepage_ui/onlineordering/lassicustard.dart';
import 'package:flutter_app/homepage_ui/onlineordering/milkshakes.dart';
import 'package:flutter_app/homepage_ui/onlineordering/mughlaipunj.dart';
import 'package:flutter_app/homepage_ui/onlineordering/mushroom.dart';
import 'package:flutter_app/homepage_ui/onlineordering/mutton.dart';
import 'package:flutter_app/homepage_ui/onlineordering/noodlesnonveg.dart';
import 'package:flutter_app/homepage_ui/onlineordering/noodlesveg.dart';
import 'package:flutter_app/homepage_ui/onlineordering/paneerchinesefood.dart';
import 'package:flutter_app/homepage_ui/onlineordering/prawns.dart';
import 'package:flutter_app/homepage_ui/onlineordering/ricenonveg.dart';
import 'package:flutter_app/homepage_ui/onlineordering/seafood.dart';
import 'package:flutter_app/homepage_ui/onlineordering/snacks.dart';
import 'package:flutter_app/homepage_ui/onlineordering/starters.dart';
import 'package:flutter_app/homepage_ui/onlineordering/tandooriroti.dart';
import 'CheckoutScreen.dart';
import 'Chinesefoodveg.dart';
import 'icecream.dart';
import 'papaddahisalad.dart';
import 'soup.dart';
import 'ProductModel.dart';
import 'package:flutter/material.dart';
import 'indianfoodvegproduct.dart';
import 'soupnonveg.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_app/homepage_ui/payment/pay.dart';
class CartApp extends StatefulWidget {
  @override
  _CartAppState createState() => _CartAppState();
}

class _CartAppState extends State<CartApp> {
  List<ProductModel> cart = [];
  // ignore: deprecated_member_use
  var arr =new List();
  int sum = 0;
  final firestoreInstance = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex:1,
      length: 29,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Bostan Meals"),
          bottom: TabBar(
            isScrollable: true,
            tabs: <Widget>[
              Tab(text: 'CART',),
              Tab(text: "Indian Food Veg",),
              Tab(text: "Veg Soup",),
              Tab(text: "Chinese Food Veg.",),
              Tab(text: "Paneer Chinese Food Veg.",),
              Tab(text: "Veg Rice",),
              Tab(text: "Noodles Veg.",),
              Tab(text: "Mushroom",),
              Tab(text: "Noodles Non veg.",),
              Tab(text: "Rice Non veg.",),
              Tab(text: "Mutton",),
              Tab(text: "Sea Food",),
              Tab(text: "Soup(Non-Veg)",),
              Tab(text: "Papad/Dahi/Salad",),
              Tab(text: "Starters",),
              Tab(text: "Chicken(Gravy)",),
              Tab(text: "Fish",),
              Tab(text: "Prawns",),
              Tab(text: "Grill",),
              Tab(text: "Tandoori Roti",),
              Tab(text: "Biryani/Pulav",),
              Tab(text: "Mughlai-Punjabi Chicken",),
              Tab(text: "Snacks",),
              Tab(text: "Fresh Fruit Juice",),
              Tab(text: "Milkshakes",),
              Tab(text: "Ice-Cream",),
              Tab(text: "Falooda",),
              Tab(text: "Lassi/Custard/Chaas",),
              Tab(text: "HotDrinks",),
            ],
          ),
        ),
        body:TabBarView(
          children: <Widget>[
            CheckoutScreen(cart, sum, (deleteProduct) {
              setState(() {
                // Use this loop instead of cart.removeWhere() to delete 1 item at a time
                for (var i = 0; i < cart.length; i++) {
                  if (cart[i].name == deleteProduct.name) {
                    cart.removeAt(i);
                    break;
                  }
                }
                sum = 0;
                cart.forEach((item) {
                  sum = sum + item.price;
                });
              });
            }),
            IndianFoodVeg((selectedProduct){
              setState(() {
                cart.add(selectedProduct); //update
                final food= selectedProduct.name;
                arr.add(food);
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            }),
            Soup((selectedProduct){
              setState(() {
                cart.add(selectedProduct);//update
                final food= selectedProduct.name;
                arr.add(food);
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            }),
            Chinesefoodveg((selectedProduct){
              setState(() {
                cart.add(selectedProduct);//update
                final food= selectedProduct.name;
                arr.add(food);
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            }),
            Paneerchinesefood((selectedProduct){
              setState(() {
                cart.add(selectedProduct);//update
                final food= selectedProduct.name;
                arr.add(food);
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            }),
            Riceveg((selectedProduct){
              setState(() {
                cart.add(selectedProduct);//update
                final food= selectedProduct.name;
                arr.add(food);
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            }),
            Noodlesveg((selectedProduct){
              setState(() {
                cart.add(selectedProduct);//update
                final food= selectedProduct.name;
                arr.add(food);
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            }),
            Mushroom((selectedProduct){
              setState(() {
                cart.add(selectedProduct);//update
                final food= selectedProduct.name;
                arr.add(food);
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            }),
            Noodlesnonveg((selectedProduct){
              setState(() {
                cart.add(selectedProduct);//update
                final food= selectedProduct.name;
                arr.add(food);
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            }),
            Ricenonveg((selectedProduct){
              setState(() {
                cart.add(selectedProduct);//update
                final food= selectedProduct.name;
                arr.add(food);
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            }),
            Mutton((selectedProduct){
              setState(() {
                cart.add(selectedProduct);//update
                final food= selectedProduct.name;
                arr.add(food);
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            }),
            Seafood((selectedProduct){
              setState(() {
                cart.add(selectedProduct);//update
                final food= selectedProduct.name;
                arr.add(food);
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            }),
            Soupnonveg((selectedProduct){
              setState(() {
                cart.add(selectedProduct);//update
                final food= selectedProduct.name;
                arr.add(food);
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            }),
            Papadahisal((selectedProduct){
              setState(() {
                cart.add(selectedProduct);//update
                final food= selectedProduct.name;
                arr.add(food);
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            }),
            Starters((selectedProduct){
              setState(() {
                cart.add(selectedProduct);//update
                final food= selectedProduct.name;
                arr.add(food);
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            }),
            Chickengravy((selectedProduct){
              setState(() {
                cart.add(selectedProduct);//update
                final food= selectedProduct.name;
                arr.add(food);
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            }),
            Fish((selectedProduct){
              setState(() {
                cart.add(selectedProduct);//update
                final food= selectedProduct.name;
                arr.add(food);
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            }),
            Prawns((selectedProduct){
              setState(() {
                cart.add(selectedProduct);//update
                final food= selectedProduct.name;
                arr.add(food);
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            }),
            Grill((selectedProduct){
              setState(() {
                cart.add(selectedProduct);//update
                final food= selectedProduct.name;
                arr.add(food);
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            }),
            Tandooriroti((selectedProduct){
              setState(() {
                cart.add(selectedProduct);//update
                final food= selectedProduct.name;
                arr.add(food);
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            }),
            Biryanipul((selectedProduct){
              setState(() {
                cart.add(selectedProduct);//update
                final food= selectedProduct.name;
                arr.add(food);
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            }),
            Mughlaipunj((selectedProduct){
              setState(() {
                cart.add(selectedProduct);//update
                final food= selectedProduct.name;
                arr.add(food);
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            }),
            Snacks((selectedProduct){
              setState(() {
                cart.add(selectedProduct);//update
                final food= selectedProduct.name;
                arr.add(food);
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            }),
            Freshfruitj((selectedProduct){
              setState(() {
                cart.add(selectedProduct);//update
                final food= selectedProduct.name;
                arr.add(food);
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            }),
            Milkshakes((selectedProduct){
              setState(() {
                cart.add(selectedProduct);//update
                final food= selectedProduct.name;
                arr.add(food);
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            }),
            Icecream((selectedProduct){
              setState(() {
                cart.add(selectedProduct);//update
                arr=[selectedProduct.name];
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            }),
            Falooda((selectedProduct){
              setState(() {
                cart.add(selectedProduct);//update
                final food= selectedProduct.name;
                arr.add(food);
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            }),
            LassiCust((selectedProduct){
              setState(() {
                cart.add(selectedProduct);//update
                final food= selectedProduct.name;
                arr.add(food);
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            }),
            HotDrinks((selectedProduct){
              setState(() {
                cart.add(selectedProduct);//update
                final food= selectedProduct.name;
                arr.add(food);
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            }),
          ],
        ),
          floatingActionButton:FloatingActionButton(
            onPressed: () {
              Map <String,dynamic> data={"total":sum,"items":arr};
            var firebaseUser =  FirebaseAuth.instance.currentUser;
            firestoreInstance.collection("food_orders").doc(firebaseUser.uid).set(data);
              Navigator.push(context, MaterialPageRoute(builder: (context)=> pay()));
            },
          ),
      ),
    );
  }
}
