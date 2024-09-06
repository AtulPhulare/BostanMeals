import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'admin.dart';
import 'adminopreations.dart';
import '../main.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
    prefixIcon: Icon(icons),
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
  late String name,email,phone;
  //TextController to read text entered in text field
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 2.0,
        centerTitle: true,
        title: Text(
          "Admin",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()
              ),
            );
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage:AssetImage('assets/images/logo.jpg'),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration:buildInputDecoration(Icons.email,"Email"),
                    validator: ( value){
                      if(value!.isEmpty)
                      {
                        return 'Please a Enter';
                      }
                      if(value!="bostanadmin@gmail.com"){
                        return 'not a valid Email';
                      }
                      return null;
                    },
                    onSaved: ( value){
                      email = value!;
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                  child: TextFormField(
                    controller: password,
                    keyboardType: TextInputType.text,
                    decoration:buildInputDecoration(Icons.lock,"Password"),
                    validator: ( value){
                      if(value!.isEmpty)
                      {
                        return 'Please a Enter Password';
                      }
                      if(password.text!="adminofbostan"){
                        return "Password does not match";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                  child: TextFormField(
                    controller: confirmpassword,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration:buildInputDecoration(Icons.lock,"Confirm Password"),
                    validator: ( value){
                      if(value!.isEmpty)
                      {
                        return 'Please re-enter password';
                      }
                      if(password.text!="adminofbostan"){
                        return "Password does not match";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 50,
                  // ignore: deprecated_member_use
                  child: ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      print("successful");
                       Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AdminHome()),
                      );
                    } else {
                      print("Unsuccessful");
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent, // Background color
                    onPrimary: Colors.white,   // Text color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: BorderSide(color: Colors.blue, width: 2),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  child: Text("Submit"),
                ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}