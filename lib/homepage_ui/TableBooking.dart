import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'HomePage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bostan',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FormPage(),
    );
  }
}

InputDecoration buildInputDecoration(IconData icons, String hinttext) {
  return InputDecoration(
    hintText: hinttext,
    hintStyle: TextStyle(
      color: Colors.white,
    ),
    prefixIcon: Icon(icons, color: Colors.white),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(color: Colors.green, width: 1.5),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(
        color: Colors.blue,
        width: 1.5,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(
        color: Colors.blue,
        width: 1.5,
      ),
    ),
  );
}

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  late String name, address, phone, choice, tables;
  final firestoreInstance = FirebaseFirestore.instance;
  final na = TextEditingController();
  final add = TextEditingController();
  final no = TextEditingController();
  final ch = TextEditingController();
  final per = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 2.0,
          centerTitle: true,
          title: Text(
            "Book Table",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
        ),
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage('assets/images/logo.jpg'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 15, left: 10, right: 10),
                      child: TextFormField(
                        controller: na,
                        keyboardType: TextInputType.text,
                        decoration: buildInputDecoration(Icons.person, "Full Name"),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Name';
                          }
                          return null;
                        },
                        onSaved: ( value) {
                          name = value!;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 15, left: 10, right: 10),
                      child: TextFormField(
                        controller: add,
                        keyboardType: TextInputType.text,
                        decoration: buildInputDecoration(Icons.location_city, "Address"),
                        validator: ( value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Your Address';
                          }
                          return null;
                        },
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        onSaved: ( value) {
                          address = value!;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 15, left: 10, right: 10),
                      child: TextFormField(
                        controller: no,
                        keyboardType: TextInputType.phone,
                        decoration: buildInputDecoration(Icons.phone, "Phone No"),
                        validator: ( value) {
                          if (value!.isEmpty) {
                            return 'Please enter phone number';
                          }
                          return null;
                        },
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        onSaved: ( value) {
                          phone = value!;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 15, left: 10, right: 10),
                      child: TextFormField(
                        controller: ch,
                        keyboardType: TextInputType.text,
                        decoration: buildInputDecoration(Icons.ac_unit, "AC OR Non-AC"),
                        validator: ( value) {
                          if (value!.isEmpty) {
                            return 'Please enter your choice';
                          }
                          return null;
                        },
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        onSaved: ( value) {
                          choice = value!;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 15, left: 10, right: 10),
                      child: TextFormField(
                        controller: per,
                        keyboardType: TextInputType.number,
                        decoration: buildInputDecoration(Icons.person, "Number of Persons"),
                        validator: ( value) {
                          if (value!.isEmpty) {
                            return 'Please enter number of persons';
                          }
                          return null;
                        },
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        onSaved: ( value) {
                          tables = value!;
                        },
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            side: BorderSide(color: Colors.blue, width: 2),
                          ),
                        ),
                        onPressed: () async {
                          if (_formkey.currentState!.validate()) {
                            var firebaseUser = FirebaseAuth.instance.currentUser;
                            if (firebaseUser != null) {
                              Map<String, dynamic> data = {
                                "name": na.text,
                                "address": add.text,
                                "phone": int.tryParse(no.text), // Convert to int
                                "choice": ch.text,
                                "persons": int.tryParse(per.text) // Convert to int
                              };
                              await firestoreInstance
                                  .collection("Table_booking")
                                  .doc(firebaseUser.uid)
                                  .set(data);
                              print("Booking successful");
                            } else {
                              print("User not logged in");
                            }
                          } else {
                            print("Unsuccessful");
                          }
                        },
                        child: Text(
                          "Book Table",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
