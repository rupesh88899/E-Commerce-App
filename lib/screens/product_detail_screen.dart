import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/product_model.dart';
import '../providers/cart_provider.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;
  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(product.imageUrl, height: 200),
              SizedBox(height: 20),
              Text(
                product.name,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text('Price: ₹${product.price}', style: TextStyle(fontSize: 18)),
              SizedBox(height: 20),
              Text(
                product.description,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              ElevatedButton.icon(
                icon: Icon(Icons.shopping_cart, color: Colors.black),
                label: Text(
                  'Add to Cart',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  cart.addToCart(
                    product.id,
                    product.name,
                    product.price,
                    product.imageUrl,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('${product.name} added to cart')),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
