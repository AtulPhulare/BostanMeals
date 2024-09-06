import 'package:flutter/material.dart';
import 'package:flutter_app/homepage_ui/Feedback.dart';
import 'package:flutter_app/homepage_ui/TableBooking.dart';
import 'package:flutter_app/homepage_ui/onlineordering/cart.dart';
import 'Menu.dart';
import 'aboutUs.dart';
class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        child: Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "BOSTAN MEALS",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "WELCOME",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 20.0,
      ),
      //Now let's Add the button for the Menu
      //and let's copy that and modify it
      ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Menu()
            ),
          );
        },
        leading: Icon(
          Icons.menu_book,
          color: Colors.black,
        ),
        title: Text("Menu List"),
      ),

      ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CartApp()
            ),
          );
        },
        leading: Icon(
          Icons.book_online,
          color: Colors.black,
        ),
        title: Text("Online Ordering"),
      ),

      ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FormPage()
            ),
          );
        },
        leading: Icon(
          Icons.book_online,
          color: Colors.black,
        ),
        title: Text("Table Booking"),
      ),

      ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>AboutPage()
            ),
          );
        },
        leading: Icon(
          Icons.auto_awesome,
          color: Colors.black,
        ),
        title: Text("About us"),
      ),

      ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Feedback1()
            ),
          );
        },
        leading: Icon(
          Icons.feedback,
          color: Colors.black,
        ),
        title: Text("Feedback"),
      ),
      ListTile(
        onTap: () {},
        leading: Icon(
          Icons.login_outlined,
          color: Colors.black,
        ),
        title: Text("Log Out"),
      ),
    ]);
  }
}

