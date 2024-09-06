import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class Bookapp extends StatelessWidget {
  final firestoreInstance = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Bookings"),),
      body: StreamBuilder(
          stream: firestoreInstance.collection("Table_booking").snapshots(),
          // ignore: non_constant_identifier_names
          builder: (BuildContext context,AsyncSnapshot<QuerySnapshot> Querysnapshot) {
            if (Querysnapshot.hasError) {
              return Text("Error");
            }
            if (Querysnapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else {
              final data=Querysnapshot.data!.docs;
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.feedback),
                    title: Text('${data[index]['phone']}'),
                    subtitle:Column(
                  children: [Text('${data[index]['name']}'),
                    Text('${data[index]['address']}'),
                    Text('${data[index]['choice']}'),]
                    ),
                    trailing: Text('${data[index]['persons']}'),
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