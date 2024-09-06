import 'package:flutter/material.dart';
import 'main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
class Feedback1 extends StatefulWidget {
  @override
  _FeedbackState createState() => _FeedbackState();
}
class _FeedbackState extends State<Feedback1> {
  final phone=TextEditingController();
  final comment=TextEditingController();

  final firestoreInstance = FirebaseFirestore.instance;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 2.0,
        centerTitle: true,
        title: Text(
          "Feedback",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()
              ),
            );
          },
        ),
      ),
      body:Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            buildFeedbackForm(),
            SizedBox(height: 20.0),
            buildNumberField(),
            Spacer(),
            Row(
              children: [
                // ignore: deprecated_member_use
                TextButton(
                  onPressed: () {
                    Map <String,dynamic> data={"phone":phone.text,"comment":comment.text};
                    var firebaseUser =  FirebaseAuth.instance.currentUser;
                    firestoreInstance.collection("feedback").doc(firebaseUser!.uid).set(data);
                  },
                  child: Text(
                    "SUBMIT",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                  // color: Color(0xFFE5E5E5),
                  // padding: EdgeInsets.all(16.0),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
  buildNumberField() {
    return TextField(
      controller: phone,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0.0),
        prefixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [Expanded(child:
            Container(
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    width: 1.0,
                    color: Color(0xFFC5C5C5),
                  ),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "+91",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFC5C5C5),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
            ),
          ),
            SizedBox(
              width: 10.0,
            ),
          ],
        ),
        hintStyle: TextStyle(
          fontSize: 14.0,
          color: Colors.black,
        ),
        hintText: "Phone Number",
        border: OutlineInputBorder(),
      ),

    );
  }

  buildFeedbackForm() {
    return Container(

      height: 150,
      child: Stack(
        children: [
          TextField(
            controller: comment,
            maxLines: 15,
            decoration: InputDecoration(
              hintText: "Please briefly describe the issue",
              hintStyle: TextStyle(
                fontSize: 13.0,
                color: Colors.black,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFE5E5E5),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 1.0,
                    color: Color(0xFFA6A6A6),
                  ),
                ),
              ),
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFE5E5E5),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}