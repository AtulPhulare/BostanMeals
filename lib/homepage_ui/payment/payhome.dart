import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:toast/toast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app/homepage_ui/onlineordering/cart.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final firestoreInstance = FirebaseFirestore.instance;
  late Razorpay razorpay;
  TextEditingController textEditingController = new TextEditingController();
  TextEditingController add=new TextEditingController();
  TextEditingController no=new TextEditingController();
  TextEditingController email=new TextEditingController();
  @override
  void initState() {
    super.initState();

    razorpay = new Razorpay();

    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerPaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlerErrorFailure);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handlerExternalWallet);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    razorpay.clear();
  }

  void openCheckout(){
    var options = {
      "key" : "rzp_test_TKWBpqZ4g4jves",
      "amount" : num.parse(textEditingController.text)*100,
      "name" : "Bostan Meals",
      "description" : "Payment for the Hotel Bostan",
      "prefill" : {
        "contact" : no,
        "email" : email,
      },
      "external" : {
        "wallets" : ["paytm"]
      }
    };

    try{
      razorpay.open(options);

    }catch(e){
      print(e.toString());
    }
  }

  void handlerPaymentSuccess(){
    print("Payment success");
    Toast.show("Payment success", context);
  }

  void handlerErrorFailure(){
    print("Payment error");
    Toast.show("Payment error", context);
  }

  void handlerExternalWallet(){
    print("External Wallet");
    Toast.show("External Wallet", context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Razor Pay Tutorial"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Text("Total Bill:", style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),),
            TextField(
              controller: email,
              decoration: InputDecoration(
                labelText: "email",
              ),
            ),
            SizedBox(height: 12,),
            TextField(
              controller: no,
              decoration: InputDecoration(
                labelText: "phone_no.",
              ),
            ),
            SizedBox(height: 12,),
            TextField(
              controller: add,
              decoration: InputDecoration(
                labelText: "address",
              ),
            ),
            SizedBox(height: 12,),
            TextField(
              controller: textEditingController,
              decoration: InputDecoration(
                  hintText: "pay",
              ),
            ),
            SizedBox(height: 12,),
            // ignore: deprecated_member_use
            ElevatedButton(
              child: Text("Pay Now", style: TextStyle(
                  color: Colors.white
              ),),
              onPressed: (){
                openCheckout();
                Map <String,dynamic> data={"order":{"address":add,"phone":no}};
                var firebaseUser =  FirebaseAuth.instance.currentUser;
                firestoreInstance.collection("food_orders").doc(firebaseUser!.tenantId).set(data);
              },
            )
          ],
        ),
      ),
    );
  }
}