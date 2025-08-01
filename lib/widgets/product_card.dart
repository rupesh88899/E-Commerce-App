import 'package:flutter/material.dart';
import '../models/product_model.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';
import '../screens/product_detail_screen.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => ProductDetailScreen(product: product),
        ),
      ),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Expanded(child: Image.network(product.imageUrl, fit: BoxFit.cover)),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Column(
                children: [
                  Text(
                    product.name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('₹${product.price.toStringAsFixed(0)}'),
                  SizedBox(height: 4),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 200, 228, 244),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(34),
                      ),
                    ),
                    onPressed: () {
                      cart.addToCart(
                        product.id,
                        product.name,
                        product.price,
                        product.imageUrl,
                      );
                    },
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
