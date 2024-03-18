import 'package:flutter/material.dart';
import 'bookings.dart';
import 'orders.dart';
void main() {
  runApp(adminApp());
}
class adminApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Records')),
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xffFFCE00),
                        Color(0xffE86F1C),
                      ],
                    ),
                    border: Border.all(
                        style: BorderStyle.solid, color: Colors.blue)),
                child: Column(
                  children: <Widget>[
                    Expanded(child:
                    GestureDetector(
                      onTap:(){},
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,//remove color to make it transpatent
                              border: Border.all(
                                  style: BorderStyle.solid,
                                  color: Colors.white)),
                          child: Center(child: Text("Users"))),
                    ),
                    ),
                    Expanded(child:
                    GestureDetector(
                      onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=> orders()));},
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,//remove color to make it transpatent
                              border: Border.all(
                                  style: BorderStyle.solid,
                                  color: Colors.white)),
                          child: Center(child: Text("Orders"))),
                    ),
                    ),
                    Expanded(child:
                    GestureDetector(
                      onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=> Bookings()));},
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,//remove color to make it transpatent
                              border: Border.all(
                                  style: BorderStyle.solid,
                                  color: Colors.white)),
                          child: Center(child: Text("Bookings"))),
                    ),
                    ),
                    Expanded(child:
                    GestureDetector(
                      onTap:(){},
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,//remove color to make it transpatent
                              border: Border.all(
                                  style: BorderStyle.solid,
                                  color: Colors.white)),
                          child: Center(child: Text("Feedback")
                          )
                      ),
                    ),
                    ),
                  ],
                ))),
      ],
    );
  }
}