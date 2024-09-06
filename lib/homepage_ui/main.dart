import 'package:flutter/material.dart';
import 'maindrawer.dart';
import 'Style.dart';
import 'package:flutter_app/homepage_ui/onlineordering/cart.dart';
import 'package:flutter_app/login.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'mont'
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECEFF1),
      appBar: AppBar(
        title: Text("BOSTAN MEALS"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>CartApp()));},
            ),
      IconButton(
      icon: Icon(Icons.logout),
      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>MyLoginPage()));},
    ),
    ],
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Today's Special", style: TextStyle(
                      fontSize: 31,
                      fontWeight: FontWeight.w700
                  ),),
                ],
              ),
              SizedBox(height: 10,),
              Text("What's special today!", style: TextStyle(
                color: Colors.grey,
                fontSize: 21,
              ),),
              SizedBox(height: 15,),
              SingleChildScrollView(
                padding: EdgeInsets.only(bottom: 20),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.55,
                      height: 350,
                      padding: EdgeInsets.symmetric(
                          vertical: 40, horizontal: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: blue,
                          boxShadow: [BoxShadow(spreadRadius: 0,
                              offset: Offset(0, 8),
                              blurRadius: 0,
                              color: blue.withOpacity(0.4))
                          ]

                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "images/food1.jpg")
                                  )
                              ),
                            ),
                          ),
                          SizedBox(height: 15,),
                          Text("Chicken Special Bostan", style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700
                          ),),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 17,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 17,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 17,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 17,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 17,
                              ),
                              Text("", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10
                              ),)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Text(
                            "Chicken Special is one of the most rated and the yummiest dish ever tasted.",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13
                            ),)
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.35,
                          height: 165,
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(30)),
                              color: green,
                              boxShadow: [
                                BoxShadow(spreadRadius: 0,
                                    offset: Offset(0, 8),
                                    blurRadius: 0,
                                    color: green.withOpacity(0.4))
                              ]
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("images/food2.jpg")
                                      )
                                  ),
                                ),
                              ),
                              SizedBox(height: 15,),
                              Text("Paneer Kadai", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700
                              ),),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                ],
                              ),


                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Column(
                          children: [
                            Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.35,
                              height: 165,
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(30)),
                                  color: black,
                                  boxShadow: [
                                    BoxShadow(spreadRadius: 0,
                                        offset: Offset(0, 8),
                                        blurRadius: 0,
                                        color: black.withOpacity(0.4))
                                  ]
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "images/food3.jpg")
                                          )
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  Text("Fish Shanghai", style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700
                                  ),),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 14,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 14,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 14,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 14,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 14,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    ),
    );
  }
}