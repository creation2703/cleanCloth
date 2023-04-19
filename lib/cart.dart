import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<String> cartItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('My Cart'),
      ),
      body: cartItems.isEmpty
          ? const Center(
              child:Text('Your cart is empty'),
            )
          : ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(cartItems[index]),
                  trailing: IconButton(
                    icon:const Icon(Icons.remove_shopping_cart),
                    onPressed: () {
                      setState(() {
                        cartItems.removeAt(index);
                      });
                    },
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddToCartDialog();
        },
        child: Icon(Icons.add_shopping_cart),
      ),
    );
  }

  void _showAddToCartDialog() {
    String newItem = '';
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title:const  Text('Add to Cart'),
          content: TextField(
            autofocus: true,
            decoration:const InputDecoration(
              labelText: 'Enter item name',
            ),
            onChanged: (value) {
              newItem = value;
            },
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child:const Text('CANCEL'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  cartItems.add(newItem);
                });
                Navigator.of(context).pop();
              },
              child:const Text('ADD'),
            ),
          ],
        );
      },
    );
  }
}
