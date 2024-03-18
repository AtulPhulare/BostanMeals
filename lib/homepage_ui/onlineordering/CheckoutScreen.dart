import 'package:flutter/material.dart';
import 'ProductModel.dart';

class CheckoutScreen extends StatelessWidget {
  final cart;
  final sum;
  final ValueSetter<ProductModel> _valueDeleter;

  CheckoutScreen(this.cart, this.sum ,this._valueDeleter);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ListView.separated(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index){
            return ListTile(
              title: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.delete),
                    color: Colors.redAccent,
                    onPressed: () => _valueDeleter(cart[index]),
                  ),
                  Text(cart[index].name),
                ],
              ),
              trailing: Text("Rs.${cart[index].price}", style: TextStyle(color: Colors.redAccent, fontSize: 20, fontWeight: FontWeight.w500),),
              onTap: (){
              },
            );
          },
          separatorBuilder: (context, index){
            return Divider();
          },
          itemCount: cart.length,
          shrinkWrap: true,
        ),
        Divider(),
        Text("Total : Rs.$sum"),
      ],
    );
  }
}