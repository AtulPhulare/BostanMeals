import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Main.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
InputDecoration buildInputDecoration(IconData icons,String hinttext) {
  return InputDecoration(
    hintText: hinttext,
    hintStyle: TextStyle(
      color: Colors.white,
    ),
    prefixIcon: Icon(icons,color: Colors.white,),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(
          color: Colors.green,
          width: 1.5
      ),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(
        color: Colors.blue,
        width: 1.5,
      ),
    ),
    enabledBorder:OutlineInputBorder(
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
  String name,address,phone,choice,tables;
  final firestoreInstance = FirebaseFirestore.instance;
  final na=TextEditingController();
 final add=TextEditingController();
  final no=TextEditingController();
  final ch=TextEditingController();
  final per=TextEditingController();
  //TextController to read text entered in text field
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(iconTheme: IconThemeData(color: Colors.black),
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
                MaterialPageRoute(builder: (context) => HomePage()
                ),
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
                      padding: const EdgeInsets.only(bottom:15,left: 10,right: 10),
                      child: TextFormField(
                        controller: na,
                        keyboardType: TextInputType.text,
                        decoration: buildInputDecoration(Icons.person,"Full Name"),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        validator: (String value){
                          if(value.isEmpty)
                          {
                            return 'Please Enter Name';
                          }
                          return null;
                        },
                        onSaved: (String value){
                          name = value;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                      child: TextFormField(
                        controller: add,
                        keyboardType: TextInputType.text,
                        decoration:buildInputDecoration(Icons.location_city,"Address"),
                        validator: (String value){
                          if(value.isEmpty)
                          {
                            return 'Please Enter Your Address';
                          }
                          return null;
                        },
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        onSaved: (String value){
                          address = value;
                        },
                      ),
                    ),
                    Padding(

                      padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                      child: TextFormField(
                        controller: no,
                        keyboardType: TextInputType.number,
                        decoration:buildInputDecoration(Icons.phone,"Phone No"),
                        validator: (String value){
                          if(value.isEmpty)
                          {
                            return 'Please enter phone no ';
                          }
                          return null;
                        },
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        onSaved: (String value){
                          phone = value;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                      child: TextFormField(
                        controller: ch,
                        keyboardType: TextInputType.text,
                        decoration:buildInputDecoration(Icons.ac_unit,"AC OR Non-AC"),
                        validator: (String value){
                          if(value.isEmpty)
                          {
                            return 'Please a Enter Your Choice';
                          }
                          return null;
                        },
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        onSaved: (String value) {
                          choice = value;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                      child: TextFormField(
                        controller: per,
                        keyboardType: TextInputType.number,
                        decoration:buildInputDecoration(Icons.person,"Number of Persons"),
                        validator: (String value){
                          if(value.isEmpty)
                          {
                            return 'Please Enter Number of Persons';
                          }
                          return null;
                        },
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        onSaved: (String value) {
                          tables = value;
                        },
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      height: 50,
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        color: Colors.redAccent,
                        onPressed: (){
                          if(_formkey.currentState.validate())
                          {
                            print("successful");
                            Map <String,dynamic> data={"name":na.text,"address":add.text,"phone":no.text as int,"choice":ch.text,"persons":per.text as int};
                            var firebaseUser =  FirebaseAuth.instance.currentUser;
                            firestoreInstance.collection("Table_booking").doc(firebaseUser.uid).set(data);
                            return;
                          }else{
                            print("UnSuccessfull");
                          }
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            side: BorderSide(color: Colors.blue,width: 2)
                        ),
                        textColor:Colors.white,child: Text("Book Table"),
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