import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "Coat",
      "picture": "images/products/blazer1.jpeg",
      "price": 50,
      "size": "M",
      "color": "Black",
      "quantity": 1,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "price": 80,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "price": 80,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    
  ];
  
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index){
          return Single_cart_product(
            cart_prod_name: Products_on_the_cart[index]["name"],
            cart_prod_color: Products_on_the_cart[index]["color"],
            cart_prod_qty: Products_on_the_cart[index]["quantity"],
            cart_prod_size: Products_on_the_cart[index]["size"],
            cart_prod_price: Products_on_the_cart[index]["price"],
            cart_prod_picture: Products_on_the_cart[index]["picture"],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {

  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_qty

  });



  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // ==================Leading Section==================
        leading: new Image.asset(cart_prod_picture),

        // ==================Title Section====================
        title: new Text(cart_prod_name),
        // ==================SubTitle Section=================
        subtitle: new Column(
          children: <Widget>[
            // Row inside in the column
            new Row(
              children:<Widget>[
                //this is for size of product in cart
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text("Size:"),
                ),

                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(cart_prod_size, style: TextStyle(color:Colors.red),),
                ),
               
               // this is for color of product in cart 

                new Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                child: new Text("Color:"),),

                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(cart_prod_color, style: TextStyle(color:Colors.red),),
                ),
              ],
            ),

            // this is for product price
            new Container(
              alignment: Alignment.topLeft,
              child: new Text("\$${cart_prod_price}", style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold, color: Colors.red),),
            ),
          ],
        ),
      trailing: FittedBox(
            fit: BoxFit.fill,
            child: Column(
              children: <Widget>[
                new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){},),
                new Text("$cart_prod_qty"),
                new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){},)
              ],
            ),
      ),
      ),
    );
  }

}