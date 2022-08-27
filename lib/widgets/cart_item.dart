import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/cart.dart';

class CartItem extends StatelessWidget {
  // ignore: use_key_in_widget_constructors

  final String id;
  final String productId;
  final double price;

  final int quantity;
  final String title;
  final String image;

  const CartItem(
    this.id,
    this.productId,
    this.price,
    this.quantity,
    this.title,
    this.image,
  );

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(id),
      background: Container(
        color: Theme.of(context).errorColor,
        child: const Icon(
          Icons.delete,
          color: Colors.white,
          size: 40,
        ),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 15),
      ),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        Provider.of<Cart>(context, listen: false).removeCartItem(
          productId,
        );
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            content: Text(
              'Item Removed!',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
            )));
      },
      child: Card(
          margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 15),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.network(
                    image,
                    fit: BoxFit.contain,
                  )),
              title: Text(title),
              subtitle: Text('Total: \$${(price * quantity)}'),
              trailing: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$$price'),
                    Text('$quantity x'),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
