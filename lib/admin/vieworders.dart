import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class orapp extends StatelessWidget {
  final firestoreInstance = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Orders"),),
      body: StreamBuilder(
          stream: firestoreInstance.collection("food_orders").snapshots(),
          // ignore: non_constant_identifier_names
          builder: (BuildContext context,AsyncSnapshot<QuerySnapshot> Querysnapshot) {
            if (Querysnapshot.hasError) {
              return Text("Error");
            }
            if (Querysnapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else {
              final data=Querysnapshot.data.docs;
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.feedback),
                    title: Text('${data[index]['total']}'),
                    subtitle: Text('${data[index]['items']}'),
                    isThreeLine: true,
                  );
                },
              );
            }//else
          }
      ),
    );
  }
}