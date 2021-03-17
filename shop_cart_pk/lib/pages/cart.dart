import 'package:flutter/material.dart';

// my own imports
import 'package:shop_cart_pk/components/cart_products.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.green,
        title: Text('Cart'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: (){}),
        ],
      ),

      body: new Cart_products(),

      

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(child: ListTile(
              title: new Text("Total: ", style: TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),),
              subtitle: new Text("\$130", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17),),
            )),

            Expanded(
              child: new MaterialButton(onPressed: (){},
              child: new Text("Check Out", style: TextStyle(color: Colors.white,),),
              color: Colors.green,),
            )
          ],
        ),
      ),
    );
  }
}