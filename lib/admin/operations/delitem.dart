import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class delitem extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<delitem> {
  final firestoreInstance = FirebaseFirestore.instance;
  TextEditingController no=new TextEditingController();
  TextEditingController email=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add item"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextField(
              controller: email,
              decoration: InputDecoration(
                labelText: "item Name",
              ),
            ),
            SizedBox(height: 12,),
            TextField(
              controller: no,
              decoration: InputDecoration(
                labelText: "price",
              ),
            ),
            SizedBox(height: 12,),
            // ignore: deprecated_member_use
            ElevatedButton(
            onPressed: () {
              firestoreInstance.collection('Food_items').doc('admin').update({
                "name": FieldValue.delete(),
                "price": FieldValue.delete()
              }).then((value) => print("Success"))
              .catchError((error) => print("Failed to delete: $error"));
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0), // Padding
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0), // Rounded corners
              ),
            ),
            child: Text("Remove"),
          )
          ],
        ),
      ),
    );
  }
}