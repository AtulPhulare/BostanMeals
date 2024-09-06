import 'package:flutter/material.dart';
import 'operations/additem.dart';
import 'operations/delitem.dart';
import 'orders.dart';
import 'bookings.dart';
import 'vieworders.dart';
import 'viewfeedbacks.dart';
import 'viewbookings.dart';
class AdminHome extends StatelessWidget{
  Widget _buildSibgleContainer(
      {required IconData icon,required int count,required String name,required BuildContext context}){
    return Card(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Colors.grey,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text(
              count.toString(),
              style: TextStyle(
                fontSize: 35,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Theme.of(context).primaryColor,
            indicatorWeight: 3,
            tabs: [
              Text(
                "Dashboard",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),),
              Text(
                "Manage",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),),
            ],
          ),
          backgroundColor: Colors.white,
          title: Text(
            "Admin Home",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Container(
          child: TabBarView(children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                child: GridView.count(
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  crossAxisCount: 2,
                  children: [Expanded(child: GestureDetector(
                    onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=> additem()));},
                    child: _buildSibgleContainer(
                      context: context,
                      count: 1,
                      icon: Icons.person,
                      name: "Add Item",
                    ),),),
                    Expanded(child: GestureDetector(
                      onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=> delitem()));},
                      child: _buildSibgleContainer(
                      context: context,
                      count: 18,
                      icon: Icons.category,
                      name: "Remove item",
                    ),),),
                    Expanded(child: GestureDetector(
                      onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=> orapp()));},
                      child: _buildSibgleContainer(
                      context: context,
                      count: 18,
                      icon: Icons.closed_caption,
                      name: "orders",
                    ),),),
                    Expanded(child: GestureDetector(
                      onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=> feedapp()));},
                      child: _buildSibgleContainer(
                      context: context,
                      count: 40,
                      icon: Icons.beach_access,
                      name: "feedbacks",
                    ),),),
                    Expanded(child: GestureDetector(
                      onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=> Bookapp()));},
                      child: _buildSibgleContainer(
                      context: context,
                      count: 7,
                      icon: Icons.shopping_cart,
                      name: "bookings",
                    ),),),
                    Expanded(child: GestureDetector(
                      child: _buildSibgleContainer(
                      context: context,
                      count: 1,
                      icon: Icons.message,
                      name: "Messages",
                    ),),),
                  ],
                )
            ),
            Container(
              child: Center(child: Text(
                "Manage",
              ),
              ),
            ),
          ],
          ),
        ),
      ),
    );
  }
}