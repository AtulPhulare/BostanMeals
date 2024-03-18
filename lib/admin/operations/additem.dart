import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

// ignore: camel_case_types
class additem extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<additem> {
  final firestoreInstance = FirebaseFirestore.instance;
  TextEditingController no=new TextEditingController();
  TextEditingController email=new TextEditingController();
  CollectionReference users = FirebaseFirestore.instance.collection('Food_items');
  Future<void> addUser() {
    return users.add({
      'item name': email.text, // John Doe
      'price': no.text,
    })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }
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
            RaisedButton(
              color: Colors.blue,
              child: Text("add", style: TextStyle(
                  color: Colors.white
              ),),
              onPressed: () {
                addUser();
              }
            )
          ],
        ),
      ),
    );
  }
}

