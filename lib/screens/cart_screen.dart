import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    final cartItems = cart.items.values.toList();

    return Scaffold(
      appBar: AppBar(title: Text('Your Cart')),
      body: cart.itemCount == 0
          ? Center(child: Text("Your cart is empty."))
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cart.itemCount,
                    itemBuilder: (ctx, i) {
                      final item = cartItems[i];
                      return ListTile(
                        leading: Image.network(
                          item.imageUrl,
                          height: 40,
                          width: 40,
                        ),
                        title: Text(item.name),
                        subtitle: Text("Qty: ${item.quantity}"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "₹${(item.price * item.quantity).toStringAsFixed(0)}",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            IconButton(
                              icon: Icon(Icons.delete, color: Colors.red),
                              onPressed: () {
                                final productId = cart.items.keys.toList()[i];
                                cart.removeItem(productId);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      "${item.name} removed from cart",
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        "Total: ₹${cart.totalAmount.toStringAsFixed(0)}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          cart.clearCart();
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Cart cleared.")),
                          );
                        },
                        child: Text("Clear Cart"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
