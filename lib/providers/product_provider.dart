import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> _products = [
    Product(
      id: '1',
      name: 'Running Shoes',
      imageUrl:
          'https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0',
      price: 1299,
      category: 'Shoes',
      description:
          'Comfortable running shoes for all terrains.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    ),
    Product(
      id: '2',
      name: 'Strawberries',
      imageUrl:
          'https://images.unsplash.com/photo-1464965911861-746a04b4bca6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      price: 120,
      category: 'Fruits',
      description:
          'Fresh and juicy strawberries, perfect for desserts.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    ),
    Product(
      id: '3',
      name: 'Tomatoes',
      imageUrl:
          'https://images.unsplash.com/photo-1518977822534-7049a61ee0c2?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      price: 99,
      category: 'Vegetables',
      description:
          'Fresh organic tomatoes, perfect for salads and cooking.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    ),
    Product(
      id: '4',
      name: 'Cookies',
      imageUrl:
          'https://plus.unsplash.com/premium_photo-1725384940713-45cdbbb49d94?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      price: 195,
      category: 'Snacks',
      description:
          'Delicious homemade cookies, perfect for tea time.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    ),
    Product(
      id: '5',
      name: 'Wireless Earbuds',
      imageUrl:
          'https://images.unsplash.com/photo-1572569511254-d8f925fe2cbb?q=80&w=1289&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      price: 2199,
      category: 'Electronics',
      description:
          'High-quality wireless earbuds with noise cancellation.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.                     ',
    ),
    Product(
      id: '6',
      name: 'Leather Wallet',
      imageUrl:
          'https://images.unsplash.com/photo-1629958513881-a086d21383cd?q=80&w=1173&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      price: 499,
      category: 'Accessories',
      description:
          'Stylish leather wallet with multiple card slots.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.                         ',
    ),
    Product(
      id: '7',
      name: 'Reading Glasses',
      imageUrl:
          'https://images.unsplash.com/photo-1640142717685-94309aa3b940?q=80&w=1074&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      price: 799,
      category: 'Eyewear',
      description:
          'Stylish reading glasses with anti-reflective coating.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    ),
    Product(
      id: '8',
      name: 'Analog Watch',
      imageUrl:
          'https://images.unsplash.com/photo-1523170335258-f5ed11844a49?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      price: 1899,
      category: 'Watches',
      description:
          'Elegant analog watch with a leather strap.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    ),
  ];

  List<Product> get products => _products;
}
