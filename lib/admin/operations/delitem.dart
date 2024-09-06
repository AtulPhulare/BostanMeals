import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


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
                //color: Colors.blue,
                child: Text("Remove", style: TextStyle(
                    color: Colors.white
                ),),
                onPressed: () {
                  firestoreInstance.collection('Food_items').doc('admin').update(
                      {"name":FieldValue.delete(),
                        "price":FieldValue.delete()}).then((value) => print("succsess"));
                }
            )
          ],
        ),
      ),
    );
  }
}